# Pinterest Auto-Upload

Lädt Bilder aus dem Ordner `Pinterest-Uploads/` automatisch als Pins auf
Pinterest hoch. Für jedes Bild generiert die Claude-API (Vision) einen
SEO-optimierten Titel, eine Beschreibung, Hashtags und einen Alt-Text. Die
Veröffentlichung erfolgt per Browser-Automatisierung (Selenium) über deinen
normalen Pinterest-Account.

## Wichtiger Hinweis

Das Einloggen und automatische Erstellen von Pins über die Weboberfläche ist
kein von Pinterest offiziell unterstützter Weg (im Gegensatz zur
Pinterest-API v5 mit OAuth). Nutze das Script nur für deinen eigenen Account,
verwende realistische Pausen zwischen Pins (`DELAY_BETWEEN_PINS_SECONDS`) und
sei dir bewusst, dass Pinterest automatisierte Logins mit Captcha/2FA
absichern kann und dass Accounts bei auffälligem Verhalten eingeschränkt
werden können. Für produktive/geschäftliche Nutzung ist die offizielle
Pinterest-API (v5, https://developers.pinterest.com) die robustere und
regelkonforme Alternative.

## Setup

1. Python-Abhängigkeiten installieren (idealerweise in einem venv):

   ```bash
   cd pinterest_uploader
   python -m venv .venv && source .venv/bin/activate
   pip install -r requirements.txt
   ```

2. Google Chrome muss installiert sein. Der passende ChromeDriver wird beim
   ersten Start automatisch über `webdriver-manager` geladen.

3. `.env.example` nach `.env` kopieren und ausfüllen:

   ```bash
   cp .env.example .env
   ```

   - `ANTHROPIC_API_KEY`: dein Claude-API-Key (https://console.anthropic.com).
   - `PINTEREST_BOARD_NAME`: exakter Name des Ziel-Boards.
   - `PINTEREST_EMAIL` / `PINTEREST_PASSWORD`: optional. Ohne diese Angaben
     öffnet sich beim ersten Lauf ein sichtbares Browserfenster, in dem du
     dich einmalig manuell einloggst (empfohlen, da Pinterest bei
     automatisierten Logins häufig Captcha/2FA verlangt). Die Session wird
     danach im Profilordner (`BROWSER_PROFILE_DIR`) gespeichert, sodass du
     dich bei weiteren Läufen nicht erneut einloggen musst.
   - `DESTINATION_LINK`: optionale Ziel-URL, die bei jedem Pin gesetzt wird.

4. Bilder in `Pinterest-Uploads/` legen (`.jpg`, `.jpeg`, `.png`, `.webp`).

## Ausführen

```bash
python upload_pins.py
```

Board für einen einzelnen Lauf abweichend von `PINTEREST_BOARD_NAME` setzen,
ohne die `.env` zu ändern:

```bash
python upload_pins.py --board "Anderes Board"
```

Ablauf pro Bild:

1. Claude analysiert das Bild und liefert Titel, Beschreibung, Hashtags und
   Alt-Text als JSON zurück.
2. Selenium öffnet die Pinterest-Pin-Erstellung, lädt das Bild hoch, füllt
   Titel/Beschreibung/Alt-Text/Zielwebsite aus, wählt das Board aus und
   veröffentlicht den Pin.
3. Das Bild wird nach erfolgreichem Upload nach `Pinterest-Uploads/uploaded/`
   verschoben (verhindert Doppel-Posts bei erneutem Lauf).
4. Jeder Versuch wird in `upload_log.csv` protokolliert (Titel, Status,
   Fehlermeldung).

Zum Testen ohne echte Veröffentlichung: `DRY_RUN=true` in `.env` setzen –
dann wird nur der generierte Content geloggt, aber nichts gepostet.

## Wenn ein Schritt fehlschlägt

Pinterest ändert sein Frontend gelegentlich. Bricht die Automatisierung an
einem bestimmten Schritt ab, wird automatisch ein Screenshot unter
`screenshots/` gespeichert. Die betroffenen CSS-Selektoren lassen sich
zentral in `pinterest_selectors.py` anpassen (per Rechtsklick → „Untersuchen“ im
Browser den aktuellen Selektor ermitteln).

## Dateien

- `upload_pins.py` – Hauptscript / Einstiegspunkt.
- `content_generator.py` – Claude-Aufruf zur Content-Generierung.
- `pinterest_client.py` – Selenium-Automatisierung (Login, Pin erstellen).
- `pinterest_selectors.py` – zentrale CSS-Selektoren der Pinterest-UI.
- `config.py` – lädt Konfiguration aus `.env`.
