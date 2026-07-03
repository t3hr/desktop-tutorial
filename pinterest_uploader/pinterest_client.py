"""Browser-Automatisierung fuers Einloggen bei Pinterest und Erstellen von Pins
mit lokalen Bilddateien (ueber die normale Pinterest-Weboberflaeche)."""
from __future__ import annotations

import logging
import time
from pathlib import Path

from selenium import webdriver
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
from webdriver_manager.chrome import ChromeDriverManager

import pinterest_selectors as sel
from config import Config

LOGIN_URL = "https://www.pinterest.com/login/"
CREATE_PIN_URL = "https://www.pinterest.com/pin-creation-tool/"

log = logging.getLogger("pinterest_uploader.client")


class PinterestUploader:
    def __init__(self, config: Config):
        self.config = config
        self.driver = self._build_driver()
        self.wait = WebDriverWait(self.driver, 30)

    def _build_driver(self) -> webdriver.Chrome:
        options = Options()
        if self.config.headless:
            options.add_argument("--headless=new")
        options.add_argument("--disable-notifications")
        options.add_argument("--window-size=1400,1000")
        options.add_argument(f"--user-data-dir={self.config.browser_profile_dir}")
        service = Service(ChromeDriverManager().install())
        return webdriver.Chrome(service=service, options=options)

    def login(self) -> None:
        self.driver.get(LOGIN_URL)
        if self._is_logged_in():
            log.info("Bereits eingeloggt (gespeicherte Browser-Session gefunden).")
            return

        if self.config.pinterest_email and self.config.pinterest_password:
            self._login_with_credentials()
        else:
            log.info(
                "Keine Zugangsdaten hinterlegt. Bitte jetzt manuell im geoeffneten "
                "Browserfenster einloggen (inkl. 2FA/Captcha falls noetig)."
            )
            input("Weiter mit ENTER, sobald du eingeloggt bist... ")

        if not self._is_logged_in():
            raise RuntimeError(
                "Login nicht erfolgreich. Bitte Zugangsdaten pruefen oder manuell "
                "im Browser einloggen und das Script erneut starten."
            )

    def _login_with_credentials(self) -> None:
        email_input = self.wait.until(
            EC.presence_of_element_located((By.CSS_SELECTOR, sel.LOGIN_EMAIL_INPUT))
        )
        email_input.send_keys(self.config.pinterest_email)
        password_input = self.driver.find_element(By.CSS_SELECTOR, sel.LOGIN_PASSWORD_INPUT)
        password_input.send_keys(self.config.pinterest_password)
        self.driver.find_element(By.CSS_SELECTOR, sel.LOGIN_SUBMIT_BUTTON).click()

        try:
            self.wait.until(lambda d: self._is_logged_in())
        except TimeoutException:
            log.warning(
                "Automatischer Login schlug fehl oder wird durch Captcha/2FA blockiert. "
                "Bitte im Browserfenster manuell abschliessen."
            )
            input("Weiter mit ENTER, sobald du eingeloggt bist... ")

    def _is_logged_in(self) -> bool:
        return "login" not in self.driver.current_url

    def create_pin(
        self,
        image_path: Path,
        title: str,
        description: str,
        alt_text: str,
        board_name: str,
        link: str | None = None,
    ) -> None:
        try:
            self.driver.get(CREATE_PIN_URL)

            file_input = self.wait.until(
                EC.presence_of_element_located((By.CSS_SELECTOR, sel.FILE_INPUT))
            )
            file_input.send_keys(str(image_path.resolve()))

            title_field = self.wait.until(
                EC.presence_of_element_located((By.CSS_SELECTOR, sel.TITLE_INPUT))
            )
            title_field.clear()
            title_field.send_keys(title)

            description_field = self.driver.find_element(By.CSS_SELECTOR, sel.DESCRIPTION_INPUT)
            description_field.click()
            description_field.send_keys(description)

            if link:
                link_field = self.driver.find_element(By.CSS_SELECTOR, sel.LINK_INPUT)
                link_field.clear()
                link_field.send_keys(link)

            self._set_alt_text(alt_text)
            self._mark_ai_modified()
            self._select_board(board_name)
            self._publish()
        except Exception:
            self._save_debug_screenshot(image_path.stem)
            raise

    def _select_board(self, board_name: str) -> None:
        self.driver.find_element(By.XPATH, sel.BOARD_DROPDOWN_TRIGGER_XPATH).click()
        search_input = self.wait.until(
            EC.presence_of_element_located((By.CSS_SELECTOR, sel.BOARD_SEARCH_INPUT))
        )
        search_input.send_keys(board_name)
        time.sleep(1.5)  # Debounced Suche in der Pinterest-UI abwarten

        try:
            match = self.wait.until(
                EC.element_to_be_clickable(
                    (By.XPATH, f"//*[normalize-space(text())='{board_name}']")
                )
            )
        except TimeoutException as exc:
            raise RuntimeError(
                f"Board '{board_name}' wurde nicht gefunden. Pruefe den exakten "
                "Namen in PINTEREST_BOARD_NAME (.env)."
            ) from exc
        match.click()

    def _set_alt_text(self, alt_text: str) -> None:
        try:
            self.driver.find_element(By.CSS_SELECTOR, sel.ALT_TEXT_BUTTON).click()
            alt_input = self.wait.until(
                EC.presence_of_element_located((By.CSS_SELECTOR, sel.ALT_TEXT_INPUT))
            )
            alt_input.send_keys(alt_text)
            self.driver.find_element(By.CSS_SELECTOR, sel.ALT_TEXT_SAVE_BUTTON).click()
        except Exception:
            log.warning("Alt-Text konnte nicht gesetzt werden, Pin wird trotzdem fortgesetzt.")

    def _mark_ai_modified(self) -> None:
        try:
            self.driver.find_element(By.CSS_SELECTOR, sel.AI_DISCLOSURE_SWITCH).click()
            person_checkbox = self.wait.until(
                EC.element_to_be_clickable((By.XPATH, sel.AI_PERSON_CHECKBOX_XPATH))
            )
            person_checkbox.click()
        except Exception:
            log.warning(
                "KI-Kennzeichnung (Als KI-modifiziert / KI-generierte Person) konnte "
                "nicht gesetzt werden, Pin wird trotzdem fortgesetzt."
            )

    def _publish(self) -> None:
        publish_button = self.wait.until(
            EC.element_to_be_clickable((By.CSS_SELECTOR, sel.PUBLISH_BUTTON))
        )
        publish_button.click()
        self.wait.until(lambda d: CREATE_PIN_URL not in d.current_url)

    def _save_debug_screenshot(self, name: str) -> None:
        out_dir = Path("screenshots")
        out_dir.mkdir(exist_ok=True)
        path = out_dir / f"error_{name}_{int(time.time())}.png"
        try:
            self.driver.save_screenshot(str(path))
            log.error("Debug-Screenshot gespeichert: %s", path)
        except Exception:
            log.error("Konnte keinen Debug-Screenshot speichern.")

    def close(self) -> None:
        self.driver.quit()
