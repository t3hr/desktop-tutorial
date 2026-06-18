#!/bin/bash
# Flora Batch Download Script
# Lädt alle fertigen Bilder aus dem Flora-Projekt "test" herunter
#
# Voraussetzung: FLORA_API_KEY muss gesetzt sein
# Usage: ./flora-batch-download.sh [output-ordner]

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

URLS=$(echo "$RESPONSE" | jq -r '.generations[] | select(.outputs != null) | .outputs[] | select(.type == "imageUrl") | .url' 2>/dev/null)

if [ -z "$URLS" ]; then
  echo "Keine fertigen Bilder gefunden."
  exit 0
fi

COUNT=0
while IFS= read -r url; do
  COUNT=$((COUNT + 1))
  NUM=$(printf "%02d" $COUNT)
  FILENAME="${DATE_PREFIX}_${PROJECT_NAME}_Flora_#${NUM}.png"
  echo "Lade Bild $COUNT: $FILENAME"
  curl -sL "$url" -o "$OUTPUT_DIR/$FILENAME"
done <<< "$URLS"

echo ""
echo "=== $COUNT Bilder heruntergeladen nach $OUTPUT_DIR ==="
ls -la "$OUTPUT_DIR"
