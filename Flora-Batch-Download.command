#!/bin/bash
# ============================================
# Flora Batch Download – Mac Doppelklick-App
# ============================================
# Lädt nur NEUE Bilder aus dem Flora-Projekt herunter.
# Merkt sich bereits geladene Bilder und überspringt sie.
# Speichert JPG/PNG mit Prompt als EXIF-Bildbeschreibung.
#
# Beim ersten Start wirst du nach deinem Flora API-Key gefragt.
# Der Key wird sicher im macOS Schlüsselbund gespeichert.
# ============================================

PROJECT_ID=""
API_BASE="https://app.flora.ai/api/v1"
DATE_PREFIX=$(date +%Y%m%d)
CONFIG_FILE="$HOME/.flora-download-config"
HISTORY_FILE="$HOME/.flora-download-history"

# --- Farben ---
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
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

if command -v security &>/dev/null; then
  FLORA_API_KEY=$(security find-generic-password -s "flora-api-key" -w 2>/dev/null)
fi

if [ -z "$FLORA_API_KEY" ] && [ -f "$CONFIG_FILE" ]; then
  FLORA_API_KEY=$(grep "^FLORA_API_KEY=" "$CONFIG_FILE" | cut -d'=' -f2-)
fi

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

# --- Workspace und Projekt auswählen ---
echo "Lade Workspaces..."
WS_RESPONSE=$(curl -s "$API_BASE/workspaces" \
  -H "Authorization: Bearer $FLORA_API_KEY")

WORKSPACE_ID=$(echo "$WS_RESPONSE" | jq -r '.workspaces[0].workspace_id' 2>/dev/null)

if [ -z "$WORKSPACE_ID" ] || [ "$WORKSPACE_ID" == "null" ]; then
  echo -e "${RED}Konnte keine Workspaces laden. Prüfe deinen API-Key.${NC}"
  read -rp "Drücke Enter zum Beenden..."
  exit 1
fi

echo "Lade Projekte..."
PRJ_RESPONSE=$(curl -s "$API_BASE/projects?workspace_id=$WORKSPACE_ID&limit=50" \
  -H "Authorization: Bearer $FLORA_API_KEY")

PRJ_COUNT=$(echo "$PRJ_RESPONSE" | jq '.projects | length' 2>/dev/null)

if [ "$PRJ_COUNT" -eq 0 ] || [ -z "$PRJ_COUNT" ]; then
  echo -e "${RED}Keine Projekte gefunden.${NC}"
  read -rp "Drücke Enter zum Beenden..."
  exit 1
fi

echo ""
echo "Verfügbare Projekte:"
for idx in $(seq 0 $((PRJ_COUNT - 1))); do
  PRJ_NAME=$(echo "$PRJ_RESPONSE" | jq -r ".projects[$idx].name")
  echo "  $((idx + 1))) $PRJ_NAME"
done

echo ""
read -rp "Welches Projekt? [1]: " PRJ_CHOICE
PRJ_CHOICE=${PRJ_CHOICE:-1}
PRJ_INDEX=$((PRJ_CHOICE - 1))

PROJECT_ID=$(echo "$PRJ_RESPONSE" | jq -r ".projects[$PRJ_INDEX].project_id")
SELECTED_NAME=$(echo "$PRJ_RESPONSE" | jq -r ".projects[$PRJ_INDEX].name")

if [ -z "$PROJECT_ID" ] || [ "$PROJECT_ID" == "null" ]; then
  echo -e "${RED}Ungültige Auswahl.${NC}"
  read -rp "Drücke Enter zum Beenden..."
  exit 1
fi

echo -e "${GREEN}Projekt: $SELECTED_NAME${NC}"

# --- History laden (pro Projekt) ---
HISTORY_FILE="$HOME/.flora-download-history-${PROJECT_ID}"
touch "$HISTORY_FILE"
ALREADY_DOWNLOADED=$(cat "$HISTORY_FILE")

# --- Projektname für Dateinamen ---
DEFAULT_NAME=$(echo "$SELECTED_NAME" | sed 's/ /-/g')
read -rp "Projektname für Dateinamen [$DEFAULT_NAME]: " PROJECT_NAME
PROJECT_NAME="${PROJECT_NAME:-$DEFAULT_NAME}"

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

# --- Projekt-Typ erkennen ---
PROJECT_ORIGIN=$(echo "$PRJ_RESPONSE" | jq -r ".projects[$PRJ_INDEX].origin")
echo -e "Projekttyp: ${CYAN}${PROJECT_ORIGIN}${NC}"

# --- Prompts aus Text-Nodes sammeln ---
echo "Lade Prompts und Bilder von Flora..."
PROMPTS_JSON=$(mktemp)
echo "[]" > "$PROMPTS_JSON"
PROMPT_CURSOR=""
PROMPT_COUNT=0
while true; do
  if [ -n "$PROMPT_CURSOR" ]; then
    PROMPT_RESPONSE=$(curl -s "$API_BASE/projects/$PROJECT_ID/nodes?limit=100&cursor=$PROMPT_CURSOR" \
      -H "Authorization: Bearer $FLORA_API_KEY")
  else
    PROMPT_RESPONSE=$(curl -s "$API_BASE/projects/$PROJECT_ID/nodes?limit=100" \
      -H "Authorization: Bearer $FLORA_API_KEY")
  fi

  # Text-Nodes als JSON-Array sammeln (url enthält den Prompt-Text)
  NEW_PROMPTS=$(echo "$PROMPT_RESPONSE" | jq -c '[.nodes[]? | select(.type == "text" and .url != null) | .url]' 2>/dev/null)
  if [ -n "$NEW_PROMPTS" ] && [ "$NEW_PROMPTS" != "[]" ]; then
    MERGED=$(jq -s '.[0] + .[1]' "$PROMPTS_JSON" <(echo "$NEW_PROMPTS"))
    echo "$MERGED" > "$PROMPTS_JSON"
    BATCH_P=$(echo "$NEW_PROMPTS" | jq 'length')
    PROMPT_COUNT=$((PROMPT_COUNT + ${BATCH_P:-0}))
  fi

  PROMPT_CURSOR=$(echo "$PROMPT_RESPONSE" | jq -r '.meta.next_cursor // empty' 2>/dev/null)
  if [ -z "$PROMPT_CURSOR" ] || [ "$PROMPT_CURSOR" == "null" ]; then
    break
  fi
done
echo -e "  ${GREEN}$PROMPT_COUNT${NC} Prompts aus Text-Nodes"

# --- Bilder sammeln (Canvas-Nodes + Generations) ---
# Temporäre Datei für alle Bild-Einträge (id + url + model pro Zeile)
ENTRIES_FILE=$(mktemp)

# 1) Canvas-Nodes abfragen (funktioniert für alle Projekte)
echo "  Prüfe Canvas-Nodes..."
CURSOR=""
NODE_COUNT=0
while true; do
  if [ -n "$CURSOR" ]; then
    NODE_RESPONSE=$(curl -s "$API_BASE/projects/$PROJECT_ID/nodes?limit=100&cursor=$CURSOR" \
      -H "Authorization: Bearer $FLORA_API_KEY")
  else
    NODE_RESPONSE=$(curl -s "$API_BASE/projects/$PROJECT_ID/nodes?limit=100" \
      -H "Authorization: Bearer $FLORA_API_KEY")
  fi

  # Bild-Nodes extrahieren (type=image mit url)
  NODES=$(echo "$NODE_RESPONSE" | jq -c '[.nodes[]? | select(.type == "image" and .url != null) | {id: .node_id, url: .url}]' 2>/dev/null)
  if [ -n "$NODES" ] && [ "$NODES" != "null" ] && [ "$NODES" != "[]" ]; then
    BATCH=$(echo "$NODES" | jq -r '.[] | .id + "\t" + .url + "\t" + "canvas"')
    echo "$BATCH" >> "$ENTRIES_FILE"
    BATCH_COUNT=$(echo "$NODES" | jq 'length')
    NODE_COUNT=$((NODE_COUNT + BATCH_COUNT))
  fi

  CURSOR=$(echo "$NODE_RESPONSE" | jq -r '.meta.next_cursor // empty' 2>/dev/null)
  if [ -z "$CURSOR" ] || [ "$CURSOR" == "null" ]; then
    break
  fi
done
echo -e "  ${GREEN}$NODE_COUNT${NC} Bilder aus Canvas-Nodes"

# 2) Generations abfragen (über Workspace-Ebene, da project_id-Filter bei Canvas-Projekten nicht funktioniert)
echo "  Lade Generations (alle Iterationen)..."
GEN_COUNT=0
GEN_CURSOR=""
while true; do
  if [ -n "$GEN_CURSOR" ]; then
    GEN_RESPONSE=$(curl -s "$API_BASE/generations?workspace_id=$WORKSPACE_ID&status=completed&limit=100&cursor=$GEN_CURSOR" \
      -H "Authorization: Bearer $FLORA_API_KEY")
  else
    GEN_RESPONSE=$(curl -s "$API_BASE/generations?workspace_id=$WORKSPACE_ID&status=completed&limit=100" \
      -H "Authorization: Bearer $FLORA_API_KEY")
  fi

  if echo "$GEN_RESPONSE" | jq -e '.error' &>/dev/null 2>&1; then
    break
  fi

  # Nur Generations für das gewählte Projekt filtern, mit imageUrl-Outputs + Model
  BATCH_ENTRIES=$(echo "$GEN_RESPONSE" | jq -c --arg pid "$PROJECT_ID" \
    '[.generations[]? | select(.project_id == $pid and .outputs != null) | . as $g | .outputs[]? | select(.type == "imageUrl") | {id: $g.run_id, url: .url, model: ($g.model.model_id // "unknown")}]' 2>/dev/null)

  if [ -n "$BATCH_ENTRIES" ] && [ "$BATCH_ENTRIES" != "null" ] && [ "$BATCH_ENTRIES" != "[]" ]; then
    BATCH_COUNT=$(echo "$BATCH_ENTRIES" | jq 'length')
    echo "$BATCH_ENTRIES" | jq -r '.[] | .id + "\t" + .url + "\t" + .model' >> "$ENTRIES_FILE"
    GEN_COUNT=$((GEN_COUNT + BATCH_COUNT))
  fi

  GEN_CURSOR=$(echo "$GEN_RESPONSE" | jq -r '.meta.next_cursor // empty' 2>/dev/null)
  if [ -z "$GEN_CURSOR" ] || [ "$GEN_CURSOR" == "null" ]; then
    break
  fi

  echo -ne "\r  ${GREEN}$GEN_COUNT${NC} Generations gefunden..."
done
echo -e "\r  ${GREEN}$GEN_COUNT${NC} Bilder aus Generations        "

# --- URL-Deduplizierung + Referenzbild-Filter ---
# Generierte Bilder liegen unter .../node-inputs/...  Hochgeladene Referenzen
# (uploaded_via=upload) haben KEIN /node-inputs/ im Pfad -> werden uebersprungen.
DEDUP_FILE=$(mktemp)
SEEN_URLS_FILE=$(mktemp)
TOTAL_RAW=$(wc -l < "$ENTRIES_FILE" | tr -d ' ')
DUPES=0
REFSKIP=0
while IFS=$'\t' read -r DID DURL DMODEL; do
  [ -z "$DURL" ] && continue
  case "$DURL" in
    *"/node-inputs/"*) : ;;                 # generiert -> behalten
    *) REFSKIP=$((REFSKIP + 1)); continue ;; # Referenz/Upload -> ueberspringen
  esac
  if grep -qF "$DURL" "$SEEN_URLS_FILE" 2>/dev/null; then
    DUPES=$((DUPES + 1))
    continue
  fi
  echo "$DURL" >> "$SEEN_URLS_FILE"
  printf '%s\t%s\t%s\n' "$DID" "$DURL" "$DMODEL" >> "$DEDUP_FILE"
done < "$ENTRIES_FILE"
rm -f "$ENTRIES_FILE" "$SEEN_URLS_FILE"
ENTRIES_FILE="$DEDUP_FILE"

TOTAL=$(wc -l < "$ENTRIES_FILE" | tr -d ' ')

if [ "$TOTAL" -eq 0 ]; then
  echo -e "${YELLOW}Keine fertigen Bilder gefunden.${NC}"
  rm -f "$ENTRIES_FILE" "$PROMPTS_FILE"
  read -rp "Drücke Enter zum Beenden..."
  exit 0
fi

echo -e "  ${GREEN}$TOTAL${NC} generierte Bilder (${DUPES} Duplikate, ${REFSKIP} Referenzbilder uebersprungen)"
echo ""

# --- Nummerierte Prompts (1., 2., ...) extrahieren ---
# Pro Nummer den kuerzesten Treffer = der einzelne Prompt (nicht der Sammelblock).
NUMBERED_FILE=$(mktemp)
jq -r '
  [ .[] | select(type=="string") | select(test("^[0-9]+\\.[[:space:]]"))
        | {n:(capture("^(?<n>[0-9]+)\\.").n|tonumber), t:(gsub("\n+";" "))} ]
  | group_by(.n) | map(min_by(.t|length)) | sort_by(.n)
  | .[] | (.t | sub("^[0-9]+\\.[[:space:]]+";""))
' "$PROMPTS_JSON" > "$NUMBERED_FILE" 2>/dev/null
NPROMPTS=$(grep -c . "$NUMBERED_FILE" || true)
[ -z "$NPROMPTS" ] && NPROMPTS=0

# Fallback: wenn keine nummerierten Prompts da sind, alle laengeren Texte nehmen
if [ "$NPROMPTS" -eq 0 ] && [ -s "$PROMPTS_JSON" ]; then
  jq -r '[ .[] | select(type=="string") | select(length > 20) | gsub("\n+";" ") ] | unique | .[]' \
    "$PROMPTS_JSON" > "$NUMBERED_FILE" 2>/dev/null
  NPROMPTS=$(grep -c . "$NUMBERED_FILE" || true)
  [ -z "$NPROMPTS" ] && NPROMPTS=0
fi

if [ "$NPROMPTS" -gt 0 ]; then
  echo -e "  ${GREEN}$NPROMPTS${NC} Prompts gesammelt (fuer Per-Bild-EXIF + Sidecar)"

  # --- Sidecar-Datei mit allen Prompts ---
  PROMPTS_SIDECAR="$OUTPUT_DIR/${PROJECT_NAME}_prompts.txt"
  {
    echo "# Flora Projekt: $SELECTED_NAME"
    echo "# Projekt-ID: $PROJECT_ID"
    echo "# Exportiert: $(date '+%Y-%m-%d %H:%M')"
    echo "# $NPROMPTS Prompts"
    echo "#"
    echo "# Hinweis: Die EXIF-Zuordnung im Bild erfolgt positionsbasiert und"
    echo "# kann bei komplexen Projekten verrutschen. Diese Liste ist die"
    echo "# zuverlaessige Referenz."
    echo ""
    IDX=1
    while IFS= read -r LINE; do
      echo "--- Prompt $IDX ---"
      echo "$LINE"
      echo ""
      IDX=$((IDX + 1))
    done < "$NUMBERED_FILE"
  } > "$PROMPTS_SIDECAR"
  echo -e "  ${GREEN}✓${NC} Prompts gespeichert: $(basename "$PROMPTS_SIDECAR")"
else
  echo -e "  ${YELLOW}Keine Prompts gefunden – Bilder erhalten keinen Prompt im EXIF.${NC}"
fi

echo ""

# --- Neue filtern und herunterladen ---
SKIP_COUNT=0
DOWNLOAD_COUNT=0
URL_SKIP=0

LAST_NUM=$(ls "$OUTPUT_DIR" 2>/dev/null | grep -oE '_([0-9]{3})\.' | grep -oE '[0-9]{3}' | sort -n | tail -1)
COUNTER=${LAST_NUM:-0}
COUNTER=$((10#$COUNTER))

while IFS=$'\t' read -r ITEM_ID URL MODEL; do
  [ -z "$ITEM_ID" ] && continue

  # Bereits heruntergeladen?
  if echo "$ALREADY_DOWNLOADED" | grep -qF "$ITEM_ID"; then
    SKIP_COUNT=$((SKIP_COUNT + 1))
    continue
  fi

  DOWNLOAD_COUNT=$((DOWNLOAD_COUNT + 1))
  COUNTER=$((COUNTER + 1))
  NUM=$(printf "%03d" $COUNTER)
  BASE="${DATE_PREFIX}_${PROJECT_NAME}_Flora_${NUM}"

  # JPG
  if [[ "$FORMAT_CHOICE" == "1" || "$FORMAT_CHOICE" == "3" ]]; then
    FILENAME="${BASE}.jpg"
    echo -e "  ${GREEN}↓${NC} $FILENAME ${CYAN}(neu)${NC}"
    curl -sL "$URL" -o "$OUTPUT_DIR/$FILENAME"
  fi

  # PNG
  if [[ "$FORMAT_CHOICE" == "2" || "$FORMAT_CHOICE" == "3" ]]; then
    FILENAME_PNG="${BASE}.png"
    echo -e "  ${GREEN}↓${NC} $FILENAME_PNG ${CYAN}(neu)${NC}"

    if [[ "$FORMAT_CHOICE" == "3" ]]; then
      python3 -c "from PIL import Image; Image.open('$OUTPUT_DIR/${BASE}.jpg').save('$OUTPUT_DIR/$FILENAME_PNG', 'PNG')" 2>/dev/null
    else
      TEMP="$OUTPUT_DIR/.tmp_dl.jpg"
      curl -sL "$URL" -o "$TEMP"
      python3 -c "from PIL import Image; Image.open('$TEMP').save('$OUTPUT_DIR/$FILENAME_PNG', 'PNG')" 2>/dev/null
      rm -f "$TEMP"
    fi
  fi

  # Per-Bild-Prompt zuordnen (rotiert durch die nummerierten Prompts, wie im Original)
  PROMPT=""
  if [ "$NPROMPTS" -gt 0 ]; then
    PNUM=$(( (DOWNLOAD_COUNT - 1) % NPROMPTS + 1 ))
    PROMPT=$(sed -n "${PNUM}p" "$NUMBERED_FILE")
  fi

  # EXIF/IPTC schreiben (Lightroom-kompatibel)
  MODEL_INFO="${MODEL:-unknown}"

  for F in "$OUTPUT_DIR/${BASE}.jpg" "$OUTPUT_DIR/${BASE}.png"; do
    if [ -f "$F" ]; then
      if [ -n "$PROMPT" ]; then
        exiftool \
          -ImageDescription="$PROMPT" \
          -Caption-Abstract="$PROMPT" \
          -Description="$PROMPT" \
          -Title="${PROJECT_NAME} ${NUM}" \
          -ObjectName="${PROJECT_NAME} ${NUM}" \
          -Software="Flora AI ($MODEL_INFO)" \
          -overwrite_original "$F" >/dev/null 2>&1
      else
        exiftool \
          -Title="${PROJECT_NAME} ${NUM}" \
          -ObjectName="${PROJECT_NAME} ${NUM}" \
          -Software="Flora AI ($MODEL_INFO)" \
          -overwrite_original "$F" >/dev/null 2>&1
      fi
    fi
  done

  # ID als heruntergeladen markieren
  echo "$ITEM_ID" >> "$HISTORY_FILE"

done < "$ENTRIES_FILE"

rm -f "$ENTRIES_FILE" "$PROMPTS_JSON" "$NUMBERED_FILE"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if [ "$DOWNLOAD_COUNT" -gt 0 ]; then
  echo -e "${GREEN}$DOWNLOAD_COUNT neue Bilder heruntergeladen!${NC}"
else
  echo -e "${CYAN}Keine neuen Bilder seit dem letzten Download.${NC}"
fi
if [ "$SKIP_COUNT" -gt 0 ]; then
  echo -e "${CYAN}$SKIP_COUNT bereits vorhandene übersprungen.${NC}"
fi
echo "Speicherort: $OUTPUT_DIR"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Ordner im Finder öffnen
if [ "$DOWNLOAD_COUNT" -gt 0 ]; then
  open "$OUTPUT_DIR" 2>/dev/null
fi

echo ""
read -rp "Drücke Enter zum Beenden..."
