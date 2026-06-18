#!/bin/bash
# ============================================
# Flora Batch Download – Mac Doppelklick-App
# ============================================
# Lädt alle fertigen Bilder aus dem Flora-Projekt herunter,
# speichert sie als JPG + PNG mit Prompt als EXIF-Bildbeschreibung.
#
# Beim ersten Start wirst du nach deinem Flora API-Key gefragt.
# Der Key wird sicher im macOS Schlüsselbund gespeichert.
# ============================================

PROJECT_ID="prj_ns71qffxy7txzn3rnpvsm75z6d88xk15"
API_BASE="https://app.flora.ai/api/v1"
DATE_PREFIX=$(date +%Y%m%d)
CONFIG_FILE="$HOME/.flora-download-config"

# --- Farben ---
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo ""
echo "╔══════════════════════════════════════╗"
echo "║    🌿 Flora Batch Download          ║"
echo "╚══════════════════════════════════════╝"
echo ""

# --- Abhängigkeiten prüfen ---
MISSING=""
if ! command -v jq &>/dev/null; then MISSING="$MISSING jq"; fi
if ! command -v exiftool &>/dev/null; then MISSING="$MISSING exiftool"; fi
if ! python3 -c "from PIL import Image" &>/dev/null 2>&1; then MISSING="$MISSING Pillow"; fi

if [ -n "$MISSING" ]; then
  echo -e "${YELLOW}Fehlende Tools:${NC}$MISSING"
  echo ""
  if command -v brew &>/dev/null; then
    echo "Installiere automatisch..."
    [[ "$MISSING" == *"jq"* ]] && brew install jq
    [[ "$MISSING" == *"exiftool"* ]] && brew install exiftool
    [[ "$MISSING" == *"Pillow"* ]] && pip3 install Pillow
    echo ""
  else
    echo -e "${RED}Bitte zuerst Homebrew installieren:${NC}"
    echo "  /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
    echo ""
    echo "Dann erneut doppelklicken."
    echo ""
    read -rp "Drücke Enter zum Beenden..."
    exit 1
  fi
fi

# --- API-Key aus Schlüsselbund oder Config ---
FLORA_API_KEY=""

# Versuch 1: macOS Schlüsselbund
if command -v security &>/dev/null; then
  FLORA_API_KEY=$(security find-generic-password -s "flora-api-key" -w 2>/dev/null)
fi

# Versuch 2: Config-Datei
if [ -z "$FLORA_API_KEY" ] && [ -f "$CONFIG_FILE" ]; then
  FLORA_API_KEY=$(grep "^FLORA_API_KEY=" "$CONFIG_FILE" | cut -d'=' -f2-)
fi

# Versuch 3: Neu abfragen
if [ -z "$FLORA_API_KEY" ]; then
  echo -e "${YELLOW}Flora API-Key benötigt${NC}"
  echo "Findest du unter: https://app.flora.ai → Settings → API Keys"
  echo ""
  read -rp "API-Key eingeben: " FLORA_API_KEY

  if [ -z "$FLORA_API_KEY" ]; then
    echo -e "${RED}Kein Key eingegeben. Abbruch.${NC}"
    read -rp "Drücke Enter zum Beenden..."
    exit 1
  fi

  # Im Schlüsselbund speichern
  if command -v security &>/dev/null; then
    security add-generic-password -s "flora-api-key" -a "$USER" -w "$FLORA_API_KEY" 2>/dev/null
    echo -e "${GREEN}Key im macOS Schlüsselbund gespeichert.${NC}"
  else
    echo "FLORA_API_KEY=$FLORA_API_KEY" > "$CONFIG_FILE"
    chmod 600 "$CONFIG_FILE"
    echo -e "${GREEN}Key in $CONFIG_FILE gespeichert.${NC}"
  fi
  echo ""
fi

# --- Projektname ---
read -rp "Projektname [YAK-Nomads]: " PROJECT_NAME
PROJECT_NAME="${PROJECT_NAME:-YAK-Nomads}"

# --- Zielordner per Finder-Dialog ---
echo ""
echo "Wähle den Speicherort im Finder-Dialog..."
OUTPUT_DIR=$(osascript -e 'set chosenFolder to choose folder with prompt "Wo sollen die Bilder gespeichert werden?"' -e 'return POSIX path of chosenFolder' 2>/dev/null)

if [ -z "$OUTPUT_DIR" ]; then
  OUTPUT_DIR="$HOME/Downloads/flora-exports"
  echo "Kein Ordner gewählt, verwende: $OUTPUT_DIR"
fi

mkdir -p "$OUTPUT_DIR"

# --- Format ---
echo ""
echo "Format wählen:"
echo "  1) JPG"
echo "  2) PNG"
echo "  3) Beide (JPG + PNG)"
read -rp "Auswahl [3]: " FORMAT_CHOICE
FORMAT_CHOICE="${FORMAT_CHOICE:-3}"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Projekt:     $PROJECT_NAME"
echo "Zielordner:  $OUTPUT_DIR"
echo "Datum:       $DATE_PREFIX"
echo "Format:      $([ "$FORMAT_CHOICE" == "1" ] && echo "JPG" || ([ "$FORMAT_CHOICE" == "2" ] && echo "PNG" || echo "JPG + PNG"))"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# --- API-Abfrage ---
echo "Lade Generierungen von Flora..."
RESPONSE=$(curl -s "$API_BASE/generations?project_id=$PROJECT_ID&status=completed&limit=100" \
  -H "Authorization: Bearer $FLORA_API_KEY")

# Prüfen ob Antwort gültig
if echo "$RESPONSE" | jq -e '.error' &>/dev/null 2>&1; then
  echo -e "${RED}API-Fehler: $(echo "$RESPONSE" | jq -r '.error')${NC}"
  read -rp "Drücke Enter zum Beenden..."
  exit 1
fi

URLS=$(echo "$RESPONSE" | jq -r '.generations[] | select(.outputs != null) | .outputs[] | select(.type == "imageUrl") | .url' 2>/dev/null)

if [ -z "$URLS" ]; then
  echo -e "${YELLOW}Keine fertigen Bilder gefunden.${NC}"
  read -rp "Drücke Enter zum Beenden..."
  exit 0
fi

# --- Download ---
COUNT=0
while IFS= read -r url; do
  COUNT=$((COUNT + 1))
  NUM=$(printf "%03d" $COUNT)
  BASE="${DATE_PREFIX}_${PROJECT_NAME}_Flora_${NUM}"

  # Prompt suchen
  PROMPT=$(echo "$RESPONSE" | jq -r --arg num "$COUNT" \
    '.generations[] | select(.outputs != null) | .outputs[] | select(.type == "text") | .url | select(startswith($num + ". "))' 2>/dev/null | head -1 | sed 's/^[0-9]*\. //')

  # JPG
  if [[ "$FORMAT_CHOICE" == "1" || "$FORMAT_CHOICE" == "3" ]]; then
    FILENAME="${BASE}.jpg"
    echo -e "  ${GREEN}↓${NC} $FILENAME"
    curl -sL "$url" -o "$OUTPUT_DIR/$FILENAME"
    if [ -n "$PROMPT" ]; then
      exiftool -ImageDescription="$PROMPT" -overwrite_original "$OUTPUT_DIR/$FILENAME" >/dev/null 2>&1
    fi
  fi

  # PNG
  if [[ "$FORMAT_CHOICE" == "2" || "$FORMAT_CHOICE" == "3" ]]; then
    FILENAME_PNG="${BASE}.png"
    echo -e "  ${GREEN}↓${NC} $FILENAME_PNG"

    if [[ "$FORMAT_CHOICE" == "3" ]]; then
      python3 -c "from PIL import Image; Image.open('$OUTPUT_DIR/${BASE}.jpg').save('$OUTPUT_DIR/$FILENAME_PNG', 'PNG')" 2>/dev/null
    else
      TEMP="$OUTPUT_DIR/.tmp_dl.jpg"
      curl -sL "$url" -o "$TEMP"
      python3 -c "from PIL import Image; Image.open('$TEMP').save('$OUTPUT_DIR/$FILENAME_PNG', 'PNG')" 2>/dev/null
      rm -f "$TEMP"
    fi

    if [ -n "$PROMPT" ]; then
      exiftool -ImageDescription="$PROMPT" -overwrite_original "$OUTPUT_DIR/$FILENAME_PNG" >/dev/null 2>&1
    fi
  fi

done <<< "$URLS"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${GREEN}$COUNT Bilder heruntergeladen!${NC}"
echo "Speicherort: $OUTPUT_DIR"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Ordner im Finder öffnen
open "$OUTPUT_DIR" 2>/dev/null

echo ""
read -rp "Drücke Enter zum Beenden..."
