#!/bin/bash
# Download: 2026 Racing Mixed
# 4 Bilder (Formula 1 pit lane)
# Generiert: 2026-06-22

DIR="$HOME/Downloads/magnific/Spaces"
SKIPPED=0
DOWNLOADED=0
FAILED=0

mkdir -p "$DIR/Spaces/2026-Racing-Mixed"

FPATH="$DIR/Spaces/2026-Racing-Mixed/20260605_2026-Racing-Mixed_Magnific_152.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4511258519/render.png?token=exp=1782518400~hmac=a46319d5842ee4e9f99048f55773f1867ae2b4dd84fa657472c911c559122e33"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2026 Racing Mixed" \
      -Description="Create image-generator; Gritty black and white 35mm film photograph of a vintage 1990s Formula 1 car idling in a wet pit lane" \
      -DateTimeOriginal="2026-06-05T14:17:01+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260605_2026-Racing-Mixed_Magnific_152.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260605_2026-Racing-Mixed_Magnific_152.png"
  fi
fi

FPATH="$DIR/Spaces/2026-Racing-Mixed/20260605_2026-Racing-Mixed_Magnific_153.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4511255855/render.png?token=exp=1782518400~hmac=26bceaf44afd5f33df8a3cc67716249e4cb749c688bfbbac7c033b8a83adeef3"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2026 Racing Mixed" \
      -Description="Create image-generator; Gritty black and white 35mm film photograph of a vintage 1990s Formula 1 car idling in a wet pit lane" \
      -DateTimeOriginal="2026-06-05T14:17:01+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260605_2026-Racing-Mixed_Magnific_153.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260605_2026-Racing-Mixed_Magnific_153.png"
  fi
fi

FPATH="$DIR/Spaces/2026-Racing-Mixed/20260605_2026-Racing-Mixed_Magnific_154.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4511199885/render.png?token=exp=1782518400~hmac=52519c39cf1c423ccd63cccdc7881199375b7e327d56a7cc03d1b467e57ce370"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2026 Racing Mixed" \
      -Description="Create image-generator; Gritty black and white 35mm film photograph of a vintage 1990s Formula 1 car idling in a wet pit lane" \
      -DateTimeOriginal="2026-06-05T14:17:00+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260605_2026-Racing-Mixed_Magnific_154.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260605_2026-Racing-Mixed_Magnific_154.png"
  fi
fi

FPATH="$DIR/Spaces/2026-Racing-Mixed/20260605_2026-Racing-Mixed_Magnific_155.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4511146018/render.png?token=exp=1782518400~hmac=1d19d1ae4c7c7aed32d1d179d4e0ca1aa848d1754fc37e1d143fb3a9d10144be"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2026 Racing Mixed" \
      -Description="Create image-generator; Gritty black and white 35mm film photograph of a vintage 1990s Formula 1 car idling in a wet pit lane" \
      -DateTimeOriginal="2026-06-05T14:17:00+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260605_2026-Racing-Mixed_Magnific_155.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260605_2026-Racing-Mixed_Magnific_155.png"
  fi
fi

echo ""
echo "=== 2026 Racing Mixed ==="
echo "Heruntergeladen: $DOWNLOADED"
echo "Übersprungen: $SKIPPED"
echo "Fehlgeschlagen: $FAILED"
