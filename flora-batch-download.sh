#!/bin/bash
# Flora Batch Download Script
# Lädt alle fertigen Bilder aus dem Flora-Projekt "test" herunter
# und schreibt den jeweiligen Prompt als EXIF-Bildbeschreibung
#
# Voraussetzung: FLORA_API_KEY muss gesetzt sein, exiftool installiert
# Usage: ./flora-batch-download.sh

PROJECT_ID="prj_ns71qffxy7txzn3rnpvsm75z6d88xk15"
API_BASE="https://app.flora.ai/api/v1"

# --- Interaktive Abfragen ---

read -rp "Projektname [YAK-Nomads]: " PROJECT_NAME
PROJECT_NAME="${PROJECT_NAME:-YAK-Nomads}"

# Standard-Ordner je nach OS
if [[ "$OSTYPE" == "darwin"* ]]; then
  DEFAULT_DIR="$HOME/Downloads/flora-exports"
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
  DEFAULT_DIR="$USERPROFILE/Downloads/flora-exports"
else
  DEFAULT_DIR="$HOME/Downloads/flora-exports"
fi

read -rp "Speicherort [$DEFAULT_DIR]: " OUTPUT_DIR
OUTPUT_DIR="${OUTPUT_DIR:-$DEFAULT_DIR}"

echo ""
echo "Format wählen:"
echo "  1) JPG"
echo "  2) PNG"
echo "  3) Beide (JPG + PNG)"
read -rp "Auswahl [1]: " FORMAT_CHOICE
FORMAT_CHOICE="${FORMAT_CHOICE:-1}"

DATE_PREFIX=$(date +%Y%m%d)

mkdir -p "$OUTPUT_DIR"

echo ""
echo "=== Flora Batch Download ==="
echo "Projekt:     $PROJECT_NAME"
echo "Zielordner:  $OUTPUT_DIR"
echo "Datum:       $DATE_PREFIX"
echo ""

if [ -z "$FLORA_API_KEY" ]; then
  echo "Fehler: FLORA_API_KEY ist nicht gesetzt."
  echo "Setze ihn mit: export FLORA_API_KEY=sk_live_..."
  exit 1
fi

RESPONSE=$(curl -s "$API_BASE/generations?project_id=$PROJECT_ID&status=completed&limit=100" \
  -H "Authorization: Bearer $FLORA_API_KEY")

URLS=$(echo "$RESPONSE" | jq -r '.generations[] | select(.outputs != null) | .outputs[] | select(.type == "imageUrl") | .url' 2>/dev/null)

if [ -z "$URLS" ]; then
  echo "Keine fertigen Bilder gefunden."
  exit 0
fi

COUNT=0
while IFS= read -r url; do
  COUNT=$((COUNT + 1))
  NUM=$(printf "%03d" $COUNT)
  BASE="${DATE_PREFIX}_${PROJECT_NAME}_Flora_${NUM}"

  # Prompt suchen
  PROMPT=$(echo "$RESPONSE" | jq -r --arg num "$COUNT" \
    '.generations[] | select(.outputs != null) | .outputs[] | select(.type == "text") | .url | select(startswith($num + ". "))' 2>/dev/null | head -1 | sed 's/^[0-9]*\. //')

  # JPG herunterladen
  if [[ "$FORMAT_CHOICE" == "1" || "$FORMAT_CHOICE" == "3" ]]; then
    FILENAME="${BASE}.jpg"
    echo "Lade $FILENAME"
    curl -sL "$url" -o "$OUTPUT_DIR/$FILENAME"
    if [ -n "$PROMPT" ] && command -v exiftool &>/dev/null; then
      exiftool -ImageDescription="$PROMPT" -overwrite_original "$OUTPUT_DIR/$FILENAME" >/dev/null 2>&1
      echo "  → Prompt als Bildbeschreibung gespeichert"
    fi
  fi

  # PNG konvertieren
  if [[ "$FORMAT_CHOICE" == "2" || "$FORMAT_CHOICE" == "3" ]]; then
    FILENAME_PNG="${BASE}.png"
    TEMP_FILE="$OUTPUT_DIR/.tmp_download.jpg"
    echo "Lade $FILENAME_PNG"

    if [[ "$FORMAT_CHOICE" == "3" ]]; then
      # JPG existiert schon, konvertiere davon
      if command -v python3 &>/dev/null; then
        python3 -c "from PIL import Image; Image.open('$OUTPUT_DIR/${BASE}.jpg').save('$OUTPUT_DIR/$FILENAME_PNG', 'PNG')"
      else
        echo "  ⚠ Python3/Pillow fehlt für PNG-Konvertierung"
        continue
      fi
    else
      # Nur PNG gewählt, lade zuerst als temp JPG
      curl -sL "$url" -o "$TEMP_FILE"
      if command -v python3 &>/dev/null; then
        python3 -c "from PIL import Image; Image.open('$TEMP_FILE').save('$OUTPUT_DIR/$FILENAME_PNG', 'PNG')"
        rm -f "$TEMP_FILE"
      else
        mv "$TEMP_FILE" "$OUTPUT_DIR/$FILENAME_PNG"
      fi
    fi

    if [ -n "$PROMPT" ] && command -v exiftool &>/dev/null; then
      exiftool -ImageDescription="$PROMPT" -overwrite_original "$OUTPUT_DIR/$FILENAME_PNG" >/dev/null 2>&1
      echo "  → Prompt als Bildbeschreibung gespeichert"
    fi
  fi

done <<< "$URLS"

echo ""
echo "=== $COUNT Bilder heruntergeladen ==="
echo "Speicherort: $OUTPUT_DIR"
ls -lh "$OUTPUT_DIR"
