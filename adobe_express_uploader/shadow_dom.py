"""Hilfsfunktionen, um Elemente durch offene Shadow-DOM-Grenzen hindurch zu
finden. Adobe Express ist mit Web Components (Spectrum/Swc, hz-composer-*)
gebaut, deren Inhalte in Shadow Roots liegen -- normale Selenium-CSS-Selektoren
sehen da nicht hinein. Diese Funktionen fuehren stattdessen JavaScript aus,
das rekursiv durch alle offenen Shadow Roots sucht.
"""
from __future__ import annotations

import time

from selenium.webdriver.remote.webdriver import WebDriver
from selenium.webdriver.remote.webelement import WebElement

# Findet das TIEFSTE Element mit passendem Text (statt nur reine Blaetter),
# damit Buttons mit Icon-Geschwistern (<button><svg/><span>Teilen</span></button>)
# trotzdem zuverlaessig treffen.
_FIND_BY_TEXT_JS = """
function walk(root, text) {
    const children = root.children ? Array.from(root.children) : [];
    let deepest = null;
    for (const el of children) {
        if (el.shadowRoot) {
            const found = walk(el.shadowRoot, text);
            if (found) deepest = found;
        }
        const found = walk(el, text);
        if (found) deepest = found;
    }
    if (deepest) return deepest;
    const content = (root.textContent || "").trim();
    if (content === text) return root;
    return null;
}
return walk(document.body, arguments[0]);
"""

_FIND_ALL_BY_TEXT_JS = """
function walk(root, text, results) {
    const children = root.children ? Array.from(root.children) : [];
    let foundDeeper = false;
    for (const el of children) {
        if (el.shadowRoot) {
            const before = results.length;
            walk(el.shadowRoot, text, results);
            if (results.length > before) foundDeeper = true;
        }
        const before = results.length;
        walk(el, text, results);
        if (results.length > before) foundDeeper = true;
    }
    if (!foundDeeper) {
        const content = (root.textContent || "").trim();
        if (content === text) results.push(root);
    }
}
const results = [];
walk(document.body, arguments[0], results);
return results;
"""

_QUERY_ALL_DEEP_JS = """
function walk(root, selector, results) {
    if (root.querySelectorAll) {
        results.push(...root.querySelectorAll(selector));
    }
    const all = root.querySelectorAll ? root.querySelectorAll('*') : [];
    for (const el of all) {
        if (el.shadowRoot) walk(el.shadowRoot, selector, results);
    }
}
const results = [];
walk(document, arguments[0], results);
return results;
"""

_FIND_INPUT_NEAR_LABEL_JS = """
function walk(root, text) {
    const children = root.children ? Array.from(root.children) : [];
    let deepest = null;
    for (const el of children) {
        if (el.shadowRoot) {
            const found = walk(el.shadowRoot, text);
            if (found) deepest = found;
        }
        const found = walk(el, text);
        if (found) deepest = found;
    }
    if (deepest) return deepest;
    const content = (root.textContent || "").trim();
    if (content === text) return root;
    return null;
}

function findInputAfter(labelEl) {
    let node = labelEl;
    for (let i = 0; i < 30 && node; i++) {
        node = node.nextElementSibling || (node.parentElement ? node.parentElement.nextElementSibling : null);
        if (!node) break;
        const tag = node.tagName.toLowerCase();
        if (tag === 'input' || tag === 'textarea') return node;
        if (node.shadowRoot) {
            const inner = node.shadowRoot.querySelector('input, textarea');
            if (inner) return inner;
        }
        const inner = node.querySelector ? node.querySelector('input, textarea') : null;
        if (inner) return inner;
    }
    return null;
}

const label = walk(document.body, arguments[0]);
if (!label) return null;
return findInputAfter(label);
"""


def find_by_text(driver: WebDriver, text: str) -> WebElement | None:
    """Sucht das erste Blatt-Element mit exakt passendem, sichtbarem Text."""
    return driver.execute_script(_FIND_BY_TEXT_JS, text)


def find_all_by_text(driver: WebDriver, text: str) -> list[WebElement]:
    return driver.execute_script(_FIND_ALL_BY_TEXT_JS, text)


def query_all_deep(driver: WebDriver, css_selector: str) -> list[WebElement]:
    """CSS-Selektor, der auch in verschachtelte offene Shadow Roots hineinsieht."""
    return driver.execute_script(_QUERY_ALL_DEEP_JS, css_selector)


def find_input_near_label(
    driver: WebDriver, label_text: str, timeout: float = 15, interval: float = 0.5
) -> WebElement | None:
    """Sucht ein Eingabefeld (input/textarea), das strukturell nahe einem
    Textlabel liegt (z.B. "Pin-Titel"). Heuristisch, da Adobe Express keine
    <label for=...>-Zuordnung fuer alle Felder verwendet."""
    deadline = time.monotonic() + timeout
    while time.monotonic() < deadline:
        field = driver.execute_script(_FIND_INPUT_NEAR_LABEL_JS, label_text)
        if field is not None:
            return field
        time.sleep(interval)
    return None


def wait_for_by_text(driver: WebDriver, text: str, timeout: float = 20, interval: float = 0.5) -> WebElement:
    deadline = time.monotonic() + timeout
    while time.monotonic() < deadline:
        element = find_by_text(driver, text)
        if element is not None:
            return element
        time.sleep(interval)
    raise TimeoutError(f"Element mit Text '{text}' nicht innerhalb {timeout}s gefunden (auch nicht in Shadow DOM).")


def click_by_text(driver: WebDriver, text: str, timeout: float = 20) -> None:
    element = wait_for_by_text(driver, text, timeout=timeout)
    driver.execute_script("arguments[0].scrollIntoView({block: 'center'});", element)
    element.click()
