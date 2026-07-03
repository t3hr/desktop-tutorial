"""Veroeffentlicht eine Seite eines Adobe-Express-Projekts ueber Adobes
eingebaute Pinterest-Anbindung ("Teilen"-Dialog).

Aufruf: python publish_page.py --page 3 [--skip-page-select]
"""
from __future__ import annotations

import argparse
import logging

from adobe_express_client import AdobeExpressUploader
from config import Config
from content_metadata import get_page_content, load_content_map

logging.basicConfig(level=logging.INFO, format="%(asctime)s [%(levelname)s] %(message)s")
log = logging.getLogger("adobe_express_uploader")


def _parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Adobe Express -> Pinterest Publisher")
    parser.add_argument("--page", type=int, required=True, help="Seitennummer im Projekt")
    parser.add_argument(
        "--skip-page-select",
        action="store_true",
        help="Seiten-Auswahl ueberspringen (Seite vorher manuell im Browser waehlen)",
    )
    return parser.parse_args()


def main() -> None:
    args = _parse_args()
    config = Config()
    config.validate()

    content_map = load_content_map()
    content = get_page_content(args.page, content_map)
    log.info("Titel fuer Seite %d: %s", args.page, content["title"])

    if config.dry_run:
        log.info("[DRY RUN] Wuerde veroeffentlichen: %s", content)
        return

    uploader = AdobeExpressUploader(config)
    try:
        uploader.open_project()
        if not args.skip_page_select:
            uploader.select_page(args.page)
        uploader.publish_to_pinterest(
            title=content["title"],
            description=content["description"],
            alt_text=content["alt_text"],
            target_url=content["target_url"] or None,
        )
        log.info("Veroeffentlichung fuer Seite %d angestossen.", args.page)
    except Exception:
        uploader.save_debug_screenshot(f"page_{args.page}")
        raise
    finally:
        uploader.close()


if __name__ == "__main__":
    main()
