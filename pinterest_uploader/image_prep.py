"""Bereinigt Bilder vor dem Pinterest-Upload.

Pinterests eigenes Pin-Erstellungswerkzeug skaliert manche Bilder mit
eingebetteten ICC-Farbprofilen/Metadaten unerwartet herunter (bestaetigt durch
manuellen Test direkt auf pinterest.com, unabhaengig von dieser
Automatisierung). Ein sauber neu gespeichertes Bild ohne diese Daten umgeht
das Problem in der Praxis."""
from __future__ import annotations

from pathlib import Path

from PIL import Image

PREPARED_DIR_NAME = "_prepared_for_upload"


def prepare_for_upload(image_path: Path) -> Path:
    image = Image.open(image_path).convert("RGB")

    out_dir = image_path.parent / PREPARED_DIR_NAME
    out_dir.mkdir(exist_ok=True)
    out_path = out_dir / f"{image_path.stem}.jpg"

    image.save(out_path, format="JPEG", quality=95)
    return out_path
