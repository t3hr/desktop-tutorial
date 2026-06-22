# Magnific Image Download Workflow

## Overview
This repo manages batch downloads of images from Magnific (magnific.com) via MCP tools.
Images are downloaded to `~/Downloads/magnific/` on the user's local Mac.

## File Structure
- `manifest.json` — Tracks all downloaded collections, image IDs, folder mappings, and Magnific references
- `download_*.sh` — Collection-specific download scripts (curl commands with presigned URLs)
- `download.sh` — Smart wrapper that runs all download scripts, skipping already-downloaded files

## Workflow: "Lade alle Bilder aus [Ordner] nach ~/Downloads/magnific"

When the user asks to download a Magnific collection:

1. **Read `manifest.json`** to check what's already been downloaded
2. **Resolve the Magnific path** using MCP tools:
   - `folders_list(onlyProjects=true)` → find top-level project
   - `folders_list(parentReference=...)` → navigate to subfolder
   - `folders_list(parentReference=...)` → discover subfolders (preserve structure!)
3. **List all images** in the collection:
   - For folder-based collections: `creations_search(from="folder", reference=...)`
   - For Space-based collections: `creations_search(from="project-root", reference=...)`
   - Paginate (25 per page) until all images are found
4. **Compare with manifest** — identify new images not yet in manifest
5. **Fetch download URLs** for new images: `creations_get(creationIdentifier=...)` → use `url` field
6. **Generate a download script** (`download_<collection_name>.sh`) with curl commands
   - File naming: `NNN_<identifier>.<ext>` (numbered, with Magnific ID)
   - Preserve Magnific subfolder structure as local subdirectories
   - Number new images continuing from the last number in manifest
7. **Update `manifest.json`** with new images, subfolders, and references
8. **Commit and push** to the branch so user can `git pull` and run locally

## Important Notes
- `pikaso.cdnpk.net` (Magnific CDN) is **blocked** in Claude Code Remote — scripts must run on the user's local machine
- Presigned URLs expire (check `exp=` parameter in token)
- The user speaks German — respond in German
- Always preserve Magnific folder hierarchy in local directory structure
- The smart `download.sh` wrapper skips files that exist and are non-empty

## Magnific Folder Structure (known)
- `Spaces/` (ref: 88c1b57f-616d-46de-81b2-4f881771e28f) — Space-based collections
- `automotive series/` (ref: 7315b4df-d55a-4c88-9fe7-381fcc14391c) — 30 car folders
- `Personal/`, `referenzbilder/`, `archiv/` — other projects

## Local Mac Usage
```bash
cd ~/desktop-tutorial
git pull
bash download.sh        # Downloads all new images, skips existing
```
