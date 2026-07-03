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
    project_url: str = os.getenv("ADOBE_EXPRESS_PROJECT_URL", "")
    headless: bool = _get_bool("HEADLESS", False)
    browser_profile_dir: str = os.getenv(
        "BROWSER_PROFILE_DIR", str(Path.home() / ".adobe_express_uploader_profile")
    )
    delay_between_pins: float = float(os.getenv("DELAY_BETWEEN_PINS_SECONDS", "20"))
    dry_run: bool = _get_bool("DRY_RUN", False)

    def validate(self) -> None:
        if not self.project_url:
            raise SystemExit("Fehlende Konfiguration in .env: ADOBE_EXPRESS_PROJECT_URL")
