"""Hilfsfunktionen, um Elemente durch offene Shadow-DOM-Grenzen hindurch zu
finden. Adobe Express ist mit Web Components (Spectrum/Swc, hz-composer-*)
gebaut, deren Inhalte in Shadow Roots liegen -- normale Selenium-CSS-Selektoren
sehen da nicht hinein. Diese Funktionen fuehren stattdessen JavaScript aus,
das rekursiv durch alle offenen Shadow Roots sucht.
"""
from __future__ import annotations

from selenium.webdriver.remote.webdriver import WebDriver
from selenium.webdriver.remote.webelement import WebElement

_FIND_BY_TEXT_JS = """
function walk(root, text) {
    const children = root.children ? Array.from(root.children) : [];
    for (const el of children) {
        if (el.shadowRoot) {
            const found = walk(el.shadowRoot, text);
            if (found) return found;
        }
        const found = walk(el, text);
        if (found) return found;
    }
    if (root.children && root.children.length === 0) {
        const content = (root.textContent || "").trim();
        if (content === text) return root;
    }
    return null;
}
return walk(document.body, arguments[0]);
"""

_FIND_ALL_BY_TEXT_JS = """
function walk(root, text, results) {
    const children = root.children ? Array.from(root.children) : [];
    for (const el of children) {
        if (el.shadowRoot) {
            walk(el.shadowRoot, text, results);
        }
        walk(el, text, results);
    }
    if (root.children && root.children.length === 0) {
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
    for (const el of children) {
        if (el.shadowRoot) {
            const found = walk(el.shadowRoot, text);
            if (found) return found;
        }
        const found = walk(el, text);
        if (found) return found;
    }
    if (root.children && root.children.length === 0) {
        const content = (root.textContent || "").trim();
        if (content === text) return root;
    }
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


def find_input_near_label(driver: WebDriver, label_text: str) -> WebElement | None:
    """Sucht ein Eingabefeld (input/textarea), das strukturell nahe einem
    Textlabel liegt (z.B. "Pin-Titel"). Heuristisch, da Adobe Express keine
    <label for=...>-Zuordnung fuer alle Felder verwendet."""
    return driver.execute_script(_FIND_INPUT_NEAR_LABEL_JS, label_text)


def click_by_text(driver: WebDriver, text: str) -> None:
    element = find_by_text(driver, text)
    if element is None:
        raise RuntimeError(f"Kein Element mit Text '{text}' gefunden (auch nicht in Shadow DOM).")
    driver.execute_script("arguments[0].scrollIntoView({block: 'center'});", element)
    element.click()
