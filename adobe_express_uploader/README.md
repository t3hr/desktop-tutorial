# Adobe Express -> Pinterest Publisher

Veröffentlicht eine Seite eines Adobe-Express-Projekts über Adobes eingebaute
"Teilen"-Funktion mit direkter Pinterest-Anbindung. Im Unterschied zu
`pinterest_uploader/` (das die normale Pinterest-Weboberfläche automatisiert)
nutzt dieses Tool Adobes eigene, bereits verknüpfte Pinterest-Verbindung —
kein separater Pinterest-Login nötig, und laut Test umgeht dieser Weg das
Format-/Kompressions-Problem der normalen Pinterest-Upload-Seite.

## Wichtiger Hinweis: experimenteller Status

Adobe Express ist mit Web Components (Shadow DOM) gebaut, wodurch normale
Browser-Automatisierung schwieriger ist als bei klassischen Webseiten. Die
Selektoren in diesem Tool sind teils per Text-Suche (z.B. "Teilen",
"Pin-Titel") ermittelt und noch nicht vollständig live getestet — insbesondere
die automatische Seitenauswahl (`select_page`) ist ein Best-Effort-Ansatz.
Bricht ein Schritt ab, landet ein Screenshot in `screenshots/`; die
betroffene Logik lässt sich in `adobe_express_client.py` anpassen.

## Setup

1. Abhängigkeiten installieren:

   ```bash
   cd adobe_express_uploader
   python -m venv .venv && source .venv/bin/activate
   pip install -r requirements.txt
   ```

2. `.env.example` nach `.env` kopieren und `ADOBE_EXPRESS_PROJECT_URL` mit der
   URL deines Adobe-Express-Projekts befüllen (aus der Adressleiste kopieren,
   z.B. `https://new.express.adobe.com/id/urn:aaid:sc:EU:...`).

3. `content.json` anlegen (Format siehe `content.example.json`): pro
   Seitennummer im Projekt ein Eintrag mit `title`, `description`,
   `hashtags`, `alt_text` und optional `target_url`.

## Ausführen

```bash
python publish_page.py --page 3
```

Beim ersten Start öffnet sich ein sichtbares Browserfenster für den
Adobe-Login (inkl. 2FA falls nötig) — danach bleibt die Session im
Profilordner gespeichert.

Falls die automatische Seitenauswahl nicht zuverlässig funktioniert: Seite
vorher manuell im Browser auswählen und mit `--skip-page-select` starten:

```bash
python publish_page.py --page 3 --skip-page-select
```

Zum Testen ohne echte Veröffentlichung: `DRY_RUN=true` in `.env` setzen.

## Dateien

- `publish_page.py` – Hauptscript / Einstiegspunkt.
- `adobe_express_client.py` – Selenium-Automatisierung für Adobe Express.
- `shadow_dom.py` – generische Hilfsfunktionen, um durch Shadow-DOM-Grenzen
  hindurch Elemente zu finden/klicken.
- `content_metadata.py` – liest Pin-Content aus `content.json`.
- `content.example.json` – Beispielformat für `content.json`.
- `config.py` – lädt Konfiguration aus `.env`.
