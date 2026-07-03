"""CSS-Selektoren fuer die Pinterest-Weboberflaeche.

Pinterest aendert sein Frontend-Markup gelegentlich. Wenn die Automatisierung
an einem bestimmten Schritt haengen bleibt (siehe Screenshot in
screenshots/), pruefe im Browser per Rechtsklick -> "Untersuchen" das
betroffene Element und passe nur den jeweiligen Selektor hier an.
"""

LOGIN_EMAIL_INPUT = "#email"
LOGIN_PASSWORD_INPUT = "#password"
LOGIN_SUBMIT_BUTTON = "[data-test-id='registerFormSubmitButton'], button[type='submit']"

FILE_INPUT = "input[type='file']"

TITLE_INPUT = (
    "#storyboard-selector-title, "
    "[data-test-id='storyboard-title-field-container'] input"
)
DESCRIPTION_INPUT = (
    "#storyboard-selector-description, "
    "[data-test-id='storyboard-description-field-container'] textarea, "
    "[data-test-id='storyboard-description-field-container'] input, "
    "[data-test-id='storyboard-description-field-container'] div[contenteditable='true']"
)
LINK_INPUT = "#WebsiteField"

BOARD_DROPDOWN_BUTTON = "[data-test-id='board-dropdown-select-button']"
BOARD_SEARCH_INPUT = "#pickerSearchField"
BOARD_OPTION_ITEM = "[data-test-id='board-list'] [data-test-id='boardWithoutSection']"

ALT_TEXT_BUTTON = "[data-test-id='pin-draft-alt-text-btn'], [aria-label='Alternativtext hinzufügen']"
ALT_TEXT_INPUT = "[data-test-id='pin-draft-alt-text-input'] textarea, textarea[id*='alt-text']"
ALT_TEXT_SAVE_BUTTON = "[data-test-id='alt-text-done-button']"

PUBLISH_BUTTON = "[data-test-id='board-dropdown-save-button']"
PUBLISH_SUCCESS = "[data-test-id='pin-published-modal'], [data-test-id='PinToast']"
