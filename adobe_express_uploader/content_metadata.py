"""Laedt vorab erstellten Pin-Content (Titel/Beschreibung/Hashtags/Alt-Text)
aus content.json, indiziert nach Seitennummer im Adobe-Express-Projekt."""
from __future__ import annotations

import json
from pathlib import Path

CONTENT_FILE = Path("content.json")


def load_content_map() -> dict:
    if not CONTENT_FILE.exists():
        raise SystemExit(
            f"{CONTENT_FILE} nicht gefunden. Lege eine JSON-Datei mit Pin-Content "
            "pro Seitennummer an (siehe content.example.json)."
        )
    return json.loads(CONTENT_FILE.read_text(encoding="utf-8"))


def get_page_content(page_number: int, content_map: dict) -> dict:
    entry = content_map.get(str(page_number))
    if entry is None:
        raise ValueError(f"Kein Content-Eintrag fuer Seite {page_number} in {CONTENT_FILE} gefunden.")

    title = str(entry["title"]).strip()[:100]
    description = str(entry["description"]).strip()[:480]
    hashtags = [tag.strip() for tag in entry.get("hashtags", []) if tag.strip()]
    alt_text = str(entry["alt_text"]).strip()[:400]
    target_url = str(entry.get("target_url", "")).strip()

    full_description = description
    if hashtags:
        full_description = f"{description}\n\n{' '.join(hashtags)}"[:500]

    return {
        "title": title,
        "description": full_description,
        "alt_text": alt_text,
        "hashtags": hashtags,
        "target_url": target_url,
    }
