#!/bin/bash
# ============================================
# Magnific Batch Download – Mac Doppelklick-App
# ============================================
# Lädt neue Bilder aus Magnific/Pikaso herunter.
# Spiegelt die Ordnerstruktur lokal auf deinem Mac.
# Merkt sich bereits geladene Bilder und überspringt sie.
# Speichert JPG/PNG mit Prompt als EXIF-Bildbeschreibung.
#
# Authentifizierung über Session-Cookie aus dem Browser:
#   1. Öffne https://www.magnific.com (eingeloggt)
#   2. Dev Tools (Cmd+Option+I) → Network → klicke auf
#      eine "v1/folders?..." Anfrage → Headers → Cookie kopieren
#   3. Beim ersten Start des Scripts einfügen
#   Der Cookie wird sicher im macOS Schlüsselbund gespeichert.
# ============================================

API_BASE="https://www.magnific.com/api/v1"
HISTORY_FILE="$HOME/.magnific-download-history"

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

echo ""
echo "╔══════════════════════════════════════╗"
echo "║    ✦ Magnific Batch Download        ║"
echo "╚══════════════════════════════════════╝"
echo ""

# --- Abhängigkeiten ---
MISSING=""
if ! command -v jq &>/dev/null; then MISSING="$MISSING jq"; fi
if ! command -v exiftool &>/dev/null; then MISSING="$MISSING exiftool"; fi

if [ -n "$MISSING" ]; then
  echo -e "${YELLOW}Fehlende Tools:${NC}$MISSING"
  echo ""
  if command -v brew &>/dev/null; then
    echo "Installiere automatisch..."
    [[ "$MISSING" == *"jq"* ]] && brew install jq
    [[ "$MISSING" == *"exiftool"* ]] && brew install exiftool
    echo ""
  else
    echo -e "${RED}Bitte zuerst Homebrew installieren:${NC}"
    echo "  /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
    echo ""
    echo "Dann erneut doppelklicken."
    read -rp "Drücke Enter zum Beenden..."
    exit 1
  fi
fi

# --- Session-Cookie aus Schlüsselbund ---
MAGNIFIC_COOKIE=""

if command -v security &>/dev/null; then
  MAGNIFIC_COOKIE=$(security find-generic-password -s "magnific-session" -w 2>/dev/null)
fi

if [ -z "$MAGNIFIC_COOKIE" ]; then
  echo -e "${YELLOW}Magnific Session-Cookie benötigt${NC}"
  echo ""
  echo "So findest du ihn:"
  echo "  1. Öffne https://www.magnific.com im Browser (eingeloggt)"
  echo "  2. Dev Tools: Cmd+Option+I → Tab 'Network'"
  echo "  3. Seite neu laden (Cmd+R)"
  echo "  4. Klicke auf eine Anfrage die mit 'v1/' beginnt"
  echo "  5. Unter 'Request Headers' → 'Cookie:' komplett kopieren"
  echo ""
  read -rp "Cookie hier einfügen: " MAGNIFIC_COOKIE

  if [ -z "$MAGNIFIC_COOKIE" ]; then
    echo -e "${RED}Kein Cookie eingegeben. Abbruch.${NC}"
    read -rp "Drücke Enter zum Beenden..."
    exit 1
  fi

  if command -v security &>/dev/null; then
    security add-generic-password -s "magnific-session" -a "$USER" -w "$MAGNIFIC_COOKIE" 2>/dev/null
    echo -e "${GREEN}Cookie im macOS Schlüsselbund gespeichert.${NC}"
  fi
  echo ""
fi

# --- XSRF-Token aus Cookie ---
XSRF_TOKEN=$(echo "$MAGNIFIC_COOKIE" | grep -oE 'XSRF-TOKEN=[^;]+' | head -1 | cut -d= -f2- | python3 -c "import sys,urllib.parse;print(urllib.parse.unquote(sys.stdin.read().strip()))" 2>/dev/null)

# --- API-Helfer mit Browser-Headers ---
api_get() {
  local URL="${API_BASE}${1}"
  local HEADERS=(
    -H "Cookie: $MAGNIFIC_COOKIE"
    -H "Accept: application/json"
    -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
    -H "Referer: https://www.magnific.com/app"
    -H "Origin: https://www.magnific.com"
  )
  if [ -n "$XSRF_TOKEN" ]; then
    HEADERS+=(-H "X-XSRF-TOKEN: $XSRF_TOKEN")
  fi
  curl -s --max-time 30 "$URL" "${HEADERS[@]}"
}

# --- Verbindung testen ---
echo "Teste API-Verbindung..."
TEST=$(api_get "/folders?per_page=5&onlyProjects=true")

if [ -z "$TEST" ]; then
  echo -e "${RED}Keine Antwort vom Server.${NC}"
  echo "Cookie erneuern: security delete-generic-password -s \"magnific-session\""
  read -rp "Drücke Enter zum Beenden..."
  exit 1
fi

# Fehler erkennen
ERROR_MSG=$(echo "$TEST" | jq -r '.message // .error // empty' 2>/dev/null)
if [ -n "$ERROR_MSG" ] && [ "$ERROR_MSG" != "null" ]; then
  echo -e "${RED}API-Fehler: $ERROR_MSG${NC}"
  echo ""
  echo "Cookie erneuern:"
  echo "  security delete-generic-password -s \"magnific-session\""
  read -rp "Drücke Enter zum Beenden..."
  exit 1
fi

# Flexible Schlüssel-Erkennung (data vs items)
DATA_KEY="data"
echo "$TEST" | jq -e '.items' &>/dev/null && DATA_KEY="items"

ITEMS_CHECK=$(echo "$TEST" | jq ".$DATA_KEY" 2>/dev/null)
if [ -z "$ITEMS_CHECK" ] || [ "$ITEMS_CHECK" == "null" ]; then
  echo -e "${RED}Unerwartetes API-Format.${NC}"
  echo "Antwort (Debug):"
  echo "$TEST" | head -c 500
  echo ""
  echo "Cookie erneuern: security delete-generic-password -s \"magnific-session\""
  read -rp "Drücke Enter zum Beenden..."
  exit 1
fi

echo -e "${GREEN}Verbindung OK.${NC}"

# --- Ordnerstruktur rekursiv laden ---
declare -a FOLDER_PATHS
declare -a FOLDER_REFS
FOLDER_COUNT=0

load_folders() {
  local PARENT_REF="$1"
  local PREFIX="$2"
  local PARAMS="per_page=100"

  if [ -z "$PARENT_REF" ]; then
    PARAMS="${PARAMS}&onlyProjects=true"
  else
    PARAMS="${PARAMS}&parentReference=$PARENT_REF"
  fi

  local RESPONSE
  RESPONSE=$(api_get "/folders?$PARAMS")
  [ -z "$RESPONSE" ] && return

  local ITEMS
  ITEMS=$(echo "$RESPONSE" | jq ".$DATA_KEY // []" 2>/dev/null)
  local COUNT
  COUNT=$(echo "$ITEMS" | jq 'length' 2>/dev/null)
  [ -z "$COUNT" ] || [ "$COUNT" == "null" ] || [ "$COUNT" -eq 0 ] && return

  for idx in $(seq 0 $((COUNT - 1))); do
    local NAME REF FPATH
    NAME=$(echo "$ITEMS" | jq -r ".[$idx].name")
    REF=$(echo "$ITEMS" | jq -r ".[$idx].reference // .[$idx].id // .[$idx].uuid")
    FPATH="${PREFIX}${NAME}"

    [ -z "$REF" ] || [ "$REF" == "null" ] && continue

    FOLDER_PATHS[$FOLDER_COUNT]="$FPATH"
    FOLDER_REFS[$FOLDER_COUNT]="$REF"
    FOLDER_COUNT=$((FOLDER_COUNT + 1))

    # Unterordner laden
    load_folders "$REF" "${FPATH}/"
  done
}

echo "Lade Ordnerstruktur..."
load_folders "" ""

if [ "$FOLDER_COUNT" -eq 0 ]; then
  echo -e "${RED}Keine Ordner gefunden.${NC}"
  echo "Debug: API-Antwort:"
  api_get "/folders?per_page=5&onlyProjects=true" | jq '.' 2>/dev/null | head -30
  read -rp "Drücke Enter zum Beenden..."
  exit 1
fi

echo -e "${GREEN}$FOLDER_COUNT Ordner gefunden.${NC}"
echo ""

# --- Ordner anzeigen ---
echo "Verfügbare Ordner:"
echo -e "  ${BOLD}0) ★ ALLE Ordner (rekursiv)${NC}"
for i in $(seq 0 $((FOLDER_COUNT - 1))); do
  DEPTH=$(echo "${FOLDER_PATHS[$i]}" | tr -cd '/' | wc -c)
  INDENT=""
  for d in $(seq 1 $DEPTH); do INDENT="$INDENT  "; done
  BASENAME=$(basename "${FOLDER_PATHS[$i]}")
  echo "  $((i + 1))) ${INDENT}${BASENAME}"
done

echo ""
read -rp "Welchen Ordner? [0 = alle]: " FOLDER_CHOICE
FOLDER_CHOICE=${FOLDER_CHOICE:-0}

# --- Zielordner per Finder-Dialog ---
echo ""
echo "Wähle den Speicherort im Finder-Dialog..."
OUTPUT_DIR=$(osascript -e 'set chosenFolder to choose folder with prompt "Wo sollen die Magnific-Bilder gespeichert werden?"' -e 'return POSIX path of chosenFolder' 2>/dev/null)

if [ -z "$OUTPUT_DIR" ]; then
  OUTPUT_DIR="$HOME/Downloads/magnific-exports"
  echo "Kein Ordner gewählt, verwende: $OUTPUT_DIR"
fi

# --- Format ---
echo ""
echo "Format wählen:"
echo "  1) JPG"
echo "  2) PNG"
echo "  3) Beide (JPG + PNG)"
read -rp "Auswahl [2]: " FORMAT_CHOICE
FORMAT_CHOICE="${FORMAT_CHOICE:-2}"

# --- Zusammenfassung ---
SELECTED_FOLDERS=""
if [ "$FOLDER_CHOICE" -eq 0 ]; then
  SELECTED_FOLDERS="ALLE ($FOLDER_COUNT Ordner)"
else
  IDX=$((FOLDER_CHOICE - 1))
  SELECTED_FOLDERS="${FOLDER_PATHS[$IDX]}"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Ordner:      $SELECTED_FOLDERS"
echo "Zielordner:  $OUTPUT_DIR"
echo "Datum:       Erstellungsdatum (aus Magnific)"
echo "Format:      $([ "$FORMAT_CHOICE" == "1" ] && echo "JPG" || ([ "$FORMAT_CHOICE" == "2" ] && echo "PNG" || echo "JPG + PNG"))"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# --- History ---
touch "$HISTORY_FILE"

TOTAL_DOWNLOADED=0
TOTAL_SKIPPED=0

# --- Detail einer Creation abrufen ---
get_creation_detail() {
  local ID="$1"
  api_get "/creations/$ID"
}

# --- Download pro Ordner ---
download_folder() {
  local FOLDER_REF="$1"
  local FOLDER_PATH="$2"
  local LOCAL_DIR="${OUTPUT_DIR}/${FOLDER_PATH}"
  local FOLDER_LABEL
  FOLDER_LABEL=$(echo "$FOLDER_PATH" | sed 's/\//_/g; s/ /-/g')

  mkdir -p "$LOCAL_DIR"

  local LAST_NUM
  LAST_NUM=$(ls "$LOCAL_DIR" 2>/dev/null | grep -oE '_([0-9]{3})\.' | grep -oE '[0-9]{3}' | sort -n | tail -1)
  local COUNTER=${LAST_NUM:-0}
  COUNTER=$((10#$COUNTER))

  local PAGE=1
  local FOLDER_DL=0
  local FOLDER_SKIP=0

  while true; do
    local SEARCH
    SEARCH=$(api_get "/files?page=$PAGE&per_page=50&folder_reference=$FOLDER_REF&order_direction=desc")

    # Auch alternative Endpunkte versuchen
    local ITEMS
    ITEMS=$(echo "$SEARCH" | jq ".$DATA_KEY // []" 2>/dev/null)
    local ITEM_COUNT
    ITEM_COUNT=$(echo "$ITEMS" | jq 'length' 2>/dev/null)

    # Falls /files nicht funktioniert, versuche /creations
    if [ -z "$ITEM_COUNT" ] || [ "$ITEM_COUNT" == "0" ] || [ "$ITEM_COUNT" == "null" ]; then
      SEARCH=$(api_get "/creations?page=$PAGE&per_page=50&folder_reference=$FOLDER_REF&order_direction=desc")
      ITEMS=$(echo "$SEARCH" | jq ".$DATA_KEY // []" 2>/dev/null)
      ITEM_COUNT=$(echo "$ITEMS" | jq 'length' 2>/dev/null)
    fi

    [ -z "$ITEM_COUNT" ] || [ "$ITEM_COUNT" == "0" ] || [ "$ITEM_COUNT" == "null" ] && break

    # Paginierung (last_page / lastPage)
    local LAST_PAGE
    LAST_PAGE=$(echo "$SEARCH" | jq '.meta.last_page // .meta.lastPage // .pagination.last_page // .pagination.lastPage // 1' 2>/dev/null)

    for j in $(seq 0 $((ITEM_COUNT - 1))); do
      local ITEM
      ITEM=$(echo "$ITEMS" | jq -c ".[$j]")

      # ID (identifier / id / uuid)
      local ID
      ID=$(echo "$ITEM" | jq -r '.identifier // .id // .uuid // empty')
      [ -z "$ID" ] && continue

      # Nur Bilder
      local FILE_TYPE
      FILE_TYPE=$(echo "$ITEM" | jq -r '.file_type // .type // .tool // empty')
      case "$FILE_TYPE" in
        *video*|*audio*) continue ;;
      esac

      # Bereits heruntergeladen?
      if grep -qF "$ID" "$HISTORY_FILE" 2>/dev/null; then
        FOLDER_SKIP=$((FOLDER_SKIP + 1))
        TOTAL_SKIPPED=$((TOTAL_SKIPPED + 1))
        continue
      fi

      # Download-URL, Prompt, Datum
      local URL PROMPT CREATED_AT
      URL=$(echo "$ITEM" | jq -r '.url // .render_url // .file_url // empty')
      PROMPT=$(echo "$ITEM" | jq -r '.prompt // .metadata.prompt // empty')
      CREATED_AT=$(echo "$ITEM" | jq -r '.createdAt // .created_at // empty')

      # Falls URL fehlt → Detail-Endpunkt abrufen
      if [ -z "$URL" ] || [ "$URL" == "null" ] || [ "$URL" == "empty" ]; then
        local DETAIL
        DETAIL=$(get_creation_detail "$ID")
        URL=$(echo "$DETAIL" | jq -r '.url // .render_url // .data.url // empty')
        [ -z "$PROMPT" ] || [ "$PROMPT" == "null" ] && PROMPT=$(echo "$DETAIL" | jq -r '.prompt // .metadata.prompt // .data.prompt // empty')
        [ -z "$CREATED_AT" ] || [ "$CREATED_AT" == "null" ] && CREATED_AT=$(echo "$DETAIL" | jq -r '.createdAt // .created_at // .data.createdAt // empty')
      fi

      [ -z "$URL" ] || [ "$URL" == "null" ] && continue

      # Erstellungsdatum für Dateiname
      local IMG_DATE
      if [ -n "$CREATED_AT" ] && [ "$CREATED_AT" != "null" ]; then
        IMG_DATE=$(echo "$CREATED_AT" | cut -c1-10 | tr -d '-')
      else
        IMG_DATE=$(date +%Y%m%d)
      fi

      COUNTER=$((COUNTER + 1))
      local NUM
      NUM=$(printf "%03d" $COUNTER)
      local BASE="${IMG_DATE}_${FOLDER_LABEL}_Magnific_${NUM}"

      # PNG herunterladen
      if [[ "$FORMAT_CHOICE" == "2" || "$FORMAT_CHOICE" == "3" ]]; then
        echo -e "  ${GREEN}↓${NC} ${FOLDER_PATH}/${BASE}.png ${CYAN}(neu)${NC}"
        curl -sL --max-time 120 "$URL" -o "$LOCAL_DIR/${BASE}.png"

        if [ -n "$PROMPT" ] && [ "$PROMPT" != "null" ]; then
          exiftool \
            -ImageDescription="$PROMPT" \
            -Caption-Abstract="$PROMPT" \
            -Description="$PROMPT" \
            -Title="${FOLDER_LABEL} ${NUM}" \
            -ObjectName="${FOLDER_LABEL} ${NUM}" \
            -overwrite_original "$LOCAL_DIR/${BASE}.png" >/dev/null 2>&1
        fi
      fi

      # JPG herunterladen
      if [[ "$FORMAT_CHOICE" == "1" || "$FORMAT_CHOICE" == "3" ]]; then
        echo -e "  ${GREEN}↓${NC} ${FOLDER_PATH}/${BASE}.jpg ${CYAN}(neu)${NC}"

        if [[ "$FORMAT_CHOICE" == "3" ]]; then
          python3 -c "from PIL import Image; Image.open('$LOCAL_DIR/${BASE}.png').convert('RGB').save('$LOCAL_DIR/${BASE}.jpg', 'JPEG', quality=95)" 2>/dev/null
        else
          curl -sL --max-time 120 "$URL" -o "$LOCAL_DIR/${BASE}.jpg"
        fi

        if [ -n "$PROMPT" ] && [ "$PROMPT" != "null" ]; then
          exiftool \
            -ImageDescription="$PROMPT" \
            -Caption-Abstract="$PROMPT" \
            -Description="$PROMPT" \
            -Title="${FOLDER_LABEL} ${NUM}" \
            -ObjectName="${FOLDER_LABEL} ${NUM}" \
            -overwrite_original "$LOCAL_DIR/${BASE}.jpg" >/dev/null 2>&1
        fi
      fi

      echo "$ID" >> "$HISTORY_FILE"
      FOLDER_DL=$((FOLDER_DL + 1))
      TOTAL_DOWNLOADED=$((TOTAL_DOWNLOADED + 1))

      sleep 0.3
    done

    [ "$PAGE" -ge "$LAST_PAGE" ] && break
    PAGE=$((PAGE + 1))
  done

  if [ "$FOLDER_DL" -gt 0 ] || [ "$FOLDER_SKIP" -gt 0 ]; then
    echo -e "  ${CYAN}-> $FOLDER_DL neu, $FOLDER_SKIP übersprungen${NC}"
  else
    echo -e "  ${CYAN}(leer)${NC}"
  fi
}

# --- Download starten ---
if [ "$FOLDER_CHOICE" -eq 0 ]; then
  echo "Downloade aus ALLEN Ordnern..."
  echo ""
  for i in $(seq 0 $((FOLDER_COUNT - 1))); do
    echo -e "${BOLD}📁 ${FOLDER_PATHS[$i]}${NC}"
    download_folder "${FOLDER_REFS[$i]}" "${FOLDER_PATHS[$i]}"
    echo ""
  done
else
  IDX=$((FOLDER_CHOICE - 1))
  echo -e "${BOLD}📁 ${FOLDER_PATHS[$IDX]}${NC}"
  download_folder "${FOLDER_REFS[$IDX]}" "${FOLDER_PATHS[$IDX]}"
  echo ""
fi

# --- Zusammenfassung ---
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if [ "$TOTAL_DOWNLOADED" -gt 0 ]; then
  echo -e "${GREEN}$TOTAL_DOWNLOADED neue Bilder heruntergeladen!${NC}"
else
  echo -e "${CYAN}Keine neuen Bilder seit dem letzten Download.${NC}"
fi
if [ "$TOTAL_SKIPPED" -gt 0 ]; then
  echo -e "${CYAN}$TOTAL_SKIPPED bereits vorhandene übersprungen.${NC}"
fi
echo "Speicherort: $OUTPUT_DIR"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ "$TOTAL_DOWNLOADED" -gt 0 ]; then
  open "$OUTPUT_DIR" 2>/dev/null
fi

echo ""
read -rp "Drücke Enter zum Beenden..."
