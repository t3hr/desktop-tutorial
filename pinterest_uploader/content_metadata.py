"""Laedt vorab erstellten Pin-Content (Titel/Beschreibung/Hashtags/Alt-Text)
aus content.json. Die Eintraege werden ausserhalb des Scripts erstellt (z.B.
von Claude im Chat) -- hier wird nur eingelesen, kein API-Aufruf noetig."""
from __future__ import annotations

import json
from pathlib import Path

CONTENT_FILE = Path("content.json")


def load_content_map() -> dict:
    if not CONTENT_FILE.exists():
        raise SystemExit(
            f"{CONTENT_FILE} nicht gefunden. Lege eine JSON-Datei mit Pin-Content "
            "pro Bilddateiname an (siehe content.example.json)."
        )
    return json.loads(CONTENT_FILE.read_text(encoding="utf-8"))


def get_pin_content(image_path: Path, content_map: dict) -> dict:
    entry = content_map.get(image_path.name)
    if entry is None:
        raise ValueError(
            f"Kein Content-Eintrag fuer '{image_path.name}' in {CONTENT_FILE} gefunden."
        )

    title = str(entry["title"]).strip()[:100]
    description = str(entry["description"]).strip()[:480]
    hashtags = [tag.strip() for tag in entry.get("hashtags", []) if tag.strip()]
    alt_text = str(entry["alt_text"]).strip()[:400]

    full_description = description
    if hashtags:
        full_description = f"{description}\n\n{' '.join(hashtags)}"[:500]

    return {
        "title": title,
        "description": full_description,
        "alt_text": alt_text,
        "hashtags": hashtags,
    }
