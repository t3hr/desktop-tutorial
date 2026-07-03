"""Browser-Automatisierung fuer Adobe Express' eingebaute "Teilen"-Funktion
mit direkter Pinterest-Anbindung (nutzt Adobes eigene, bereits verknuepfte
Pinterest-Verbindung -- kein separater Pinterest-Login noetig).

Adobe Express ist mit Web Components (Spectrum/Swc, hz-composer-*) gebaut,
deren Inhalte in offenen Shadow Roots liegen. Normale CSS-Selektoren sehen
da nicht hinein, deshalb nutzen wir die Hilfsfunktionen aus shadow_dom.py.
"""
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

import shadow_dom as sdom
from config import Config

log = logging.getLogger("adobe_express_uploader.client")

# Bestaetigter Selektor (aus Browser-Inspektion): der "Jetzt veroeffentlichen"-
# Button im Teilen-Dialog liegt in einem Shadow Root dieses Custom Elements.
PUBLISH_BUTTON_CONTAINER = "[data-testid='composer-dialog-footer-primary-action-button']"
PUBLISH_BUTTON_INNER = "[data-testid='composer-primary-action-button-action-button']"


class AdobeExpressUploader:
    def __init__(self, config: Config):
        self.config = config
        self.driver = self._build_driver()
        self.wait = WebDriverWait(self.driver, 30)

    def _build_driver(self) -> webdriver.Chrome:
        options = Options()
        if self.config.headless:
            options.add_argument("--headless=new")
        options.add_argument("--disable-notifications")
        options.add_argument("--window-size=1600,1100")
        options.add_argument(f"--user-data-dir={self.config.browser_profile_dir}")
        service = Service(ChromeDriverManager().install())
        return webdriver.Chrome(service=service, options=options)

    def open_project(self) -> None:
        self.driver.get(self.config.project_url)
        if "id.adobe.com" in self.driver.current_url or "login" in self.driver.current_url.lower():
            log.info(
                "Adobe-Login noetig. Bitte jetzt manuell im geoeffneten "
                "Browserfenster einloggen (inkl. 2FA falls noetig)."
            )
            input("Weiter mit ENTER, sobald du eingeloggt und das Projekt geladen ist... ")
        else:
            log.info("Projekt geladen (Session bereits eingeloggt).")
            time.sleep(3)  # Adobe Express braucht kurz zum vollstaendigen Laden

    def select_page(self, page_number: int) -> None:
        """Best-Effort: klickt die Seiten-Miniatur mit der angegebenen Nummer
        in der unteren Leiste. Noch nicht live bestaetigt -- falls das nicht
        funktioniert, die Seite vor dem Scriptstart manuell im Browser
        auswaehlen und diesen Schritt ueberspringen (siehe --skip-page-select)."""
        matches = sdom.find_all_by_text(self.driver, str(page_number))
        if not matches:
            raise RuntimeError(
                f"Seiten-Miniatur fuer Seite {page_number} nicht gefunden. "
                "Waehle die Seite ggf. manuell im Browser aus und starte mit "
                "--skip-page-select."
            )
        # Die Seitenleiste zeigt die Nummer typischerweise als kleines Badge
        # auf der Miniatur; wir nehmen das zuletzt gefundene Vorkommen, da
        # Lineal-/Massangaben auf der Zeichenflaeche meist vorher im DOM stehen.
        target = matches[-1]
        self.driver.execute_script("arguments[0].scrollIntoView({block: 'center'});", target)
        target.click()
        time.sleep(1.5)

    def publish_to_pinterest(
        self,
        title: str,
        description: str,
        alt_text: str,
        target_url: str | None = None,
    ) -> None:
        sdom.click_by_text(self.driver, "Teilen")
        time.sleep(2)

        self._fill_field("Pin-Titel", title)
        self._fill_field("Untertitel", description)
        if target_url:
            self._fill_field("Zielwebsite", target_url)
        self._set_alt_text(alt_text)

        self._click_publish()

    def _fill_field(self, label_text: str, value: str) -> None:
        field = sdom.find_input_near_label(self.driver, label_text)
        if field is None:
            log.warning("Feld '%s' nicht gefunden, wird uebersprungen.", label_text)
            return
        field.click()
        field.clear()
        field.send_keys(value)

    def _set_alt_text(self, alt_text: str) -> None:
        try:
            sdom.click_by_text(self.driver, "Alternativtext hinzufügen")
            time.sleep(1)
            field = sdom.find_input_near_label(self.driver, "Alternativtext hinzufügen")
            if field is not None:
                field.send_keys(alt_text)
        except Exception:
            log.warning("Alt-Text konnte nicht gesetzt werden, Veroeffentlichung wird trotzdem fortgesetzt.")

    def _click_publish(self) -> None:
        container = self.wait.until(
            EC.presence_of_element_located((By.CSS_SELECTOR, PUBLISH_BUTTON_CONTAINER))
        )
        button = self.driver.execute_script(
            "return arguments[0].shadowRoot.querySelector(arguments[1]);",
            container,
            PUBLISH_BUTTON_INNER,
        )
        if button is None:
            raise RuntimeError("Veroeffentlichen-Button nicht im Shadow Root gefunden.")
        self.driver.execute_script("arguments[0].click();", button)

    def save_debug_screenshot(self, name: str) -> None:
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
