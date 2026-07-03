"""Liest Bilder aus dem Pinterest-Uploads-Ordner, generiert SEO-Content per
Claude und veroeffentlicht sie automatisch als Pins auf Pinterest.

Aufruf: python upload_pins.py
"""
from __future__ import annotations

import csv
import logging
import shutil
import time
from datetime import datetime, timezone
from pathlib import Path

from config import Config
from content_generator import generate_pin_content
from pinterest_client import PinterestUploader

IMAGE_EXTENSIONS = {".jpg", ".jpeg", ".png", ".webp"}
LOG_FILE = Path("upload_log.csv")
LOG_FIELDS = ["timestamp", "image", "title", "board", "status", "error"]

logging.basicConfig(level=logging.INFO, format="%(asctime)s [%(levelname)s] %(message)s")
log = logging.getLogger("pinterest_uploader")


def _pending_images(folder: Path) -> list[Path]:
    if not folder.is_dir():
        raise SystemExit(f"Ordner nicht gefunden: {folder}")
    return sorted(p for p in folder.iterdir() if p.suffix.lower() in IMAGE_EXTENSIONS)


def _append_log(row: dict) -> None:
    is_new = not LOG_FILE.exists()
    with LOG_FILE.open("a", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=LOG_FIELDS)
        if is_new:
            writer.writeheader()
        writer.writerow(row)


def main() -> None:
    config = Config()
    config.validate()

    images = _pending_images(config.upload_folder)
    if not images:
        log.info("Keine neuen Bilder in %s gefunden.", config.upload_folder)
        return

    uploaded_dir = config.upload_folder / "uploaded"
    uploaded_dir.mkdir(exist_ok=True)

    uploader = None if config.dry_run else PinterestUploader(config)
    if uploader:
        uploader.login()

    try:
        for index, image_path in enumerate(images):
            log.info("Verarbeite %s (%d/%d)", image_path.name, index + 1, len(images))
            row = {
                "timestamp": datetime.now(timezone.utc).isoformat(),
                "image": image_path.name,
                "title": "",
                "board": config.board_name,
                "status": "",
                "error": "",
            }
            try:
                content = generate_pin_content(image_path, config)
                row["title"] = content["title"]
                log.info("Generierter Titel: %s", content["title"])

                if config.dry_run:
                    log.info("[DRY RUN] Wuerde Pin veroeffentlichen: %s", content)
                else:
                    uploader.create_pin(
                        image_path=image_path,
                        title=content["title"],
                        description=content["description"],
                        alt_text=content["alt_text"],
                        board_name=config.board_name,
                        link=config.destination_link or None,
                    )
                    shutil.move(str(image_path), uploaded_dir / image_path.name)

                row["status"] = "ok"
            except Exception as exc:  # bewusst breit: einzelne Fehler sollen den Lauf nicht abbrechen
                row["status"] = "error"
                row["error"] = str(exc)
                log.exception("Fehler bei %s", image_path.name)
            finally:
                _append_log(row)

            if index < len(images) - 1 and not config.dry_run:
                log.info("Warte %.0f Sekunden vor dem naechsten Pin...", config.delay_between_pins)
                time.sleep(config.delay_between_pins)
    finally:
        if uploader:
            uploader.close()


if __name__ == "__main__":
    main()
