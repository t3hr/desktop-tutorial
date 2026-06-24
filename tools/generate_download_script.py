#!/usr/bin/env python3
"""
Generate download script with original Magnific prompts for any collection.
Usage: python3 generate_download_script.py <collection_name>
"""
import json
import sys
from pathlib import Path

def load_manifest():
    """Load manifest.json"""
    with open("manifest.json") as f:
        return json.load(f)

def collect_all_images(manifest, collection_name):
    """Collect all image IDs and metadata from collection, including subfolders"""
    if collection_name not in manifest["collections"]:
        raise ValueError(f"Collection '{collection_name}' not found in manifest")

    collection = manifest["collections"][collection_name]
    images_list = []

    # Add top-level images
    if "images" in collection:
        images_list.extend(collection["images"])

    # Add images from subfolders (recursively)
    if "subfolders" in collection:
        for subfolder_name, subfolder in collection["subfolders"].items():
            if "images" in subfolder:
                images_list.extend(subfolder["images"])

    return images_list

def extract_metadata_from_filename(filename):
    """
    Extract date and file extension from filename.
    Format: YYYYMMDD_<name>_Magnific_NNN.ext
    """
    parts = filename.rsplit(".", 1)
    ext = parts[1] if len(parts) > 1 else "png"
    base = parts[0]

    # Extract date from beginning
    dateprefix = base.split("_")[0]  # YYYYMMDD format
    date = f"{dateprefix[:4]}:{dateprefix[4:6]}:{dateprefix[6:8]} 12:00:00"

    return date, ext, dateprefix

def generate_script_stub(collection_name, images_list):
    """
    Generate bash script stub that can be filled in with prompts via MCP.
    This helps gather URLs and metadata.
    """
    # For now, just verify structure
    print(f"Collection: {collection_name}")
    print(f"Total images: {len(images_list)}")
    for img in images_list[:3]:  # Show first 3
        print(f"  - {img['id']}: {img['file']}")
    print("...")

    # Extract common naming pattern
    if images_list:
        first_file = images_list[0]["file"]
        date, ext, dateprefix = extract_metadata_from_filename(first_file)
        print(f"\nDate pattern: {date}")
        print(f"Extension: {ext}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 generate_download_script.py <collection_name>")
        print("\nAvailable collections:")
        manifest = load_manifest()
        for name in manifest["collections"].keys():
            print(f"  - {name}")
        sys.exit(1)

    collection_name = " ".join(sys.argv[1:])  # Support spaces in name
    manifest = load_manifest()
    images = collect_all_images(manifest, collection_name)
    generate_script_stub(collection_name, images)
