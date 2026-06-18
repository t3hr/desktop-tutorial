#!/bin/bash
# Flora Batch Download Script
# Lädt alle fertigen Bilder aus dem Flora-Projekt "test" herunter
# und schreibt den jeweiligen Prompt als EXIF-Bildbeschreibung
#
# Voraussetzung: FLORA_API_KEY muss gesetzt sein, exiftool installiert
# Usage: ./flora-batch-download.sh [output-ordner] [projekt-name]

OUTPUT_DIR="${1:-./flora-exports}"
PROJECT_NAME="${2:-YAK-Nomads}"
PROJECT_ID="prj_ns71qffxy7txzn3rnpvsm75z6d88xk15"
API_BASE="https://app.flora.ai/api/v1"
DATE_PREFIX=$(date +%Y%m%d)

mkdir -p "$OUTPUT_DIR"

echo "=== Flora Batch Download ==="
echo "Projekt: test ($PROJECT_ID)"
echo "Zielordner: $OUTPUT_DIR"
echo ""

RESPONSE=$(curl -s "$API_BASE/generations?project_id=$PROJECT_ID&status=completed&limit=100" \
  -H "Authorization: Bearer $FLORA_API_KEY")

COUNT=0
echo "$RESPONSE" | jq -c '.generations[] | select(.outputs != null) | .outputs[] | select(.type == "imageUrl")' 2>/dev/null | while IFS= read -r entry; do
  COUNT=$((COUNT + 1))
  NUM=$(printf "%03d" $COUNT)
  url=$(echo "$entry" | jq -r '.url')
  FILENAME="${DATE_PREFIX}_${PROJECT_NAME}_Flora_${NUM}.jpg"
  echo "Lade Bild $NUM: $FILENAME"
  curl -sL "$url" -o "$OUTPUT_DIR/$FILENAME"

  # Passenden Prompt aus den Text-Generierungen suchen (nummeriert, z.B. "1. ...")
  PROMPT=$(echo "$RESPONSE" | jq -r --arg num "$COUNT" \
    '.generations[] | select(.outputs != null) | .outputs[] | select(.type == "text") | .url | select(startswith($num + ". "))' 2>/dev/null | head -1 | sed 's/^[0-9]*\. //')

  if [ -n "$PROMPT" ] && command -v exiftool &>/dev/null; then
    exiftool -ImageDescription="$PROMPT" -overwrite_original "$OUTPUT_DIR/$FILENAME" >/dev/null 2>&1
    echo "  → Prompt als Bildbeschreibung gespeichert"
  fi
done

echo ""
echo "=== Download abgeschlossen nach $OUTPUT_DIR ==="
ls -la "$OUTPUT_DIR"
