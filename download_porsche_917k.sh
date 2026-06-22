#!/bin/bash
# Download: 1970 Porsche 917K
# 5 Bilder in racing/
# Generiert: 2026-06-22

DIR="$HOME/Downloads/magnific/Spaces"
SKIPPED=0
DOWNLOADED=0
FAILED=0

# === racing (5 Bilder) ===
mkdir -p "$DIR/Spaces/1970-Porsche-917K/racing"

FPATH="$DIR/Spaces/1970-Porsche-917K/racing/20260603_1970-Porsche-917K_Magnific_147.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4493706459/render.png?token=exp=1782518400~hmac=76067dce5312327533859b2351e93b1b087ae131ed291f89571e74f69df39d5c"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1970 Porsche 917K" \
      -Description="1970 Porsche 917K, Porsche Salzburg livery, #23 — Post-Stint Stillness / Endurance Relic" \
      -DateTimeOriginal="2026-06-03T23:10:13+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1970-Porsche-917K_Magnific_147.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1970-Porsche-917K_Magnific_147.png"
  fi
fi

FPATH="$DIR/Spaces/1970-Porsche-917K/racing/20260603_1970-Porsche-917K_Magnific_148.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4493687247/render.png?token=exp=1782518400~hmac=37384f243b9240365d5e95f2bc1057657714f8f3b50e31f97c3d7aaddfe407a7"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1970 Porsche 917K" \
      -Description="1970 Porsche 917K, Porsche Salzburg livery, #23 — Chaos / Endurance Relic" \
      -DateTimeOriginal="2026-06-03T23:09:56+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1970-Porsche-917K_Magnific_148.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1970-Porsche-917K_Magnific_148.png"
  fi
fi

FPATH="$DIR/Spaces/1970-Porsche-917K/racing/20260603_1970-Porsche-917K_Magnific_149.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4493665047/render.png?token=exp=1782518400~hmac=537d0ef7fa66a449b435cbabdeb7383c44f8db0ae97e0b7b27ff93c44426a710"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1970 Porsche 917K" \
      -Description="1970 Porsche 917K, Porsche Salzburg livery, #23 — Tele Compression Speed / Endurance Relic" \
      -DateTimeOriginal="2026-06-03T23:09:50+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1970-Porsche-917K_Magnific_149.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1970-Porsche-917K_Magnific_149.png"
  fi
fi

FPATH="$DIR/Spaces/1970-Porsche-917K/racing/20260603_1970-Porsche-917K_Magnific_150.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4493620164/render.png?token=exp=1782518400~hmac=c70bbbbfae27f818db52a1d48bf9cb2467b824abb7abca5a5862ff5c05e0ade5"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1970 Porsche 917K" \
      -Description="1970 Porsche 917K, Porsche Salzburg livery, #23 — Ignition Moment / Endurance Relic" \
      -DateTimeOriginal="2026-06-03T23:09:41+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1970-Porsche-917K_Magnific_150.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1970-Porsche-917K_Magnific_150.png"
  fi
fi

FPATH="$DIR/Spaces/1970-Porsche-917K/racing/20260603_1970-Porsche-917K_Magnific_151.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4493595970/render.png?token=exp=1782518400~hmac=9c5d11d2b7aeee5ea59ac28e17c8f1e60784c9871bf36e02c89e6a99dadc5dd5"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1970 Porsche 917K" \
      -Description="1970 Porsche 917K, Porsche Salzburg livery, #23 — Human Preparation / Endurance Relic" \
      -DateTimeOriginal="2026-06-03T23:09:37+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1970-Porsche-917K_Magnific_151.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1970-Porsche-917K_Magnific_151.png"
  fi
fi

echo ""
echo "=== Porsche 917K ==="
echo "Heruntergeladen: $DOWNLOADED"
echo "Übersprungen: $SKIPPED"
echo "Fehlgeschlagen: $FAILED"
