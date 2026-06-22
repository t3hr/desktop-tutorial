#!/bin/bash
# Download: Spaces/1967 Ferrari 330GTC — 1 Bild
# Generiert: 2026-06-22

BASE="$HOME/Downloads/magnific/Spaces/1967-Ferrari-330GTC"
DOWNLOADED=0
SKIPPED=0
FAILED=0

mkdir -p "$BASE/reference_images"

# === reference_images/156: fFY7nifCDY ===
FPATH="$BASE/reference_images/20260601_1967-Ferrari-330GTC_Magnific_156.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4469234047/render.png?token=exp=1782518400~hmac=857f99d99e3ef7f3a194ddfe34811e0b30e7849500719e6733d0016cf270eab3"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1967 Ferrari 330GTC - Reference Images #156" \
      -Description="Vehicle: 1965-1967 Ferrari 330 GT 2+2 (Series II), Azzurro blue (covered in a heavy layer of barn-find dust), New Jersey license plate 155-SXE on front and rear bumpers, classic 10-hole magnesium alloy wheels, original wood-rimmed Nardi steering wheel with a center-mounted Prancing Horse horn button, dual horizontal rear light lenses." \
      -DateTimeOriginal="2026:06:01 19:37:19" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
  else
    FAILED=$((FAILED + 1))
  fi
fi

echo ""
echo "=== Ferrari 330GTC ==="
echo "Heruntergeladen: $DOWNLOADED"
echo "Übersprungen:    $SKIPPED"
echo "Fehlgeschlagen:  $FAILED"
