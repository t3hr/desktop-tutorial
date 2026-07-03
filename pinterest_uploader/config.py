"""Zentrale Konfiguration, geladen aus Umgebungsvariablen / .env."""
from __future__ import annotations

import os
from dataclasses import dataclass
from pathlib import Path

from dotenv import load_dotenv

load_dotenv()


def _get_bool(name: str, default: bool) -> bool:
    value = os.getenv(name)
    if value is None:
        return default
    return value.strip().lower() in {"1", "true", "yes", "on"}


@dataclass(frozen=True)
class Config:
    pinterest_email: str = os.getenv("PINTEREST_EMAIL", "")
    pinterest_password: str = os.getenv("PINTEREST_PASSWORD", "")
    board_name: str = os.getenv("PINTEREST_BOARD_NAME", "")
    destination_link: str = os.getenv("DESTINATION_LINK", "")
    upload_folder: Path = Path(os.getenv("UPLOAD_FOLDER", "Pinterest-Uploads"))
    headless: bool = _get_bool("HEADLESS", False)
    browser_profile_dir: str = os.getenv(
        "BROWSER_PROFILE_DIR", str(Path.home() / ".pinterest_uploader_profile")
    )
    delay_between_pins: float = float(os.getenv("DELAY_BETWEEN_PINS_SECONDS", "45"))
    dry_run: bool = _get_bool("DRY_RUN", False)

    def validate(self) -> None:
        if not self.board_name:
            raise SystemExit("Fehlende Konfiguration in .env: PINTEREST_BOARD_NAME")
        if not self.dry_run and not (self.pinterest_email and self.pinterest_password):
            print(
                "Hinweis: PINTEREST_EMAIL/PINTEREST_PASSWORD nicht gesetzt. "
                "Du musst dich beim ersten Start manuell im geoeffneten Browserfenster einloggen."
            )
