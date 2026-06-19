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
#   1. Öffne https://www.magnific.com und logge dich ein
#   2. Öffne Dev Tools (Cmd+Option+I) → Application → Cookies
#   3. Suche den Cookie "_pk_id" oder "session" (oder kopiere
#      im Network-Tab den "Cookie"-Header einer beliebigen
#      API-Anfrage)
#   4. Beim ersten Start des Scripts einfügen
#   Der Cookie wird sicher im macOS Schlüsselbund gespeichert.
# ============================================

API_BASE="https://www.magnific.com/api/v1"
HISTORY_FILE="$HOME/.magnific-download-history"

# --- Farben ---
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

# --- Abhängigkeiten prüfen ---
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
  echo "  2. Öffne Dev Tools: Cmd+Option+I"
  echo "  3. Gehe zum Tab 'Network' (Netzwerk)"
  echo "  4. Lade die Seite neu (Cmd+R)"
  echo "  5. Klicke auf eine Anfrage die mit 'v1/' beginnt"
  echo "  6. Unter 'Request Headers' findest du 'Cookie:'"
  echo "  7. Kopiere den KOMPLETTEN Cookie-Wert"
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

# --- API-Helfer ---
api_get() {
  local URL="${API_BASE}${1}"
  curl -s "$URL" \
    -H "Cookie: $MAGNIFIC_COOKIE" \
    -H "Accept: application/json" \
    -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36" \
    -H "Referer: https://www.magnific.com/app" \
    -H "Origin: https://www.magnific.com"
}

# --- API-Verbindung testen ---
echo "Teste API-Verbindung..."
TEST_RESPONSE=$(api_get "/folders?onlyProjects=true")

if [ -z "$TEST_RESPONSE" ]; then
  echo -e "${RED}Keine Antwort vom Server.${NC}"
  echo ""
  echo "Zum Zurücksetzen des Cookies:"
  echo "  security delete-generic-password -s \"magnific-session\""
  read -rp "Drücke Enter zum Beenden..."
  exit 1
fi

if echo "$TEST_RESPONSE" | jq -e '.error // .message' &>/dev/null 2>&1; then
  ERROR_MSG=$(echo "$TEST_RESPONSE" | jq -r '.error // .message // "Unbekannter Fehler"')
  echo -e "${RED}API-Fehler: $ERROR_MSG${NC}"
  echo ""
  echo "Zum Zurücksetzen des Cookies:"
  echo "  security delete-generic-password -s \"magnific-session\""
  read -rp "Drücke Enter zum Beenden..."
  exit 1
fi

ITEM_COUNT=$(echo "$TEST_RESPONSE" | jq '.items | length' 2>/dev/null)
if [ -z "$ITEM_COUNT" ] || [ "$ITEM_COUNT" == "null" ]; then
  echo -e "${RED}Unerwartete API-Antwort. Ordnerstruktur konnte nicht geladen werden.${NC}"
  echo ""
  echo "API-Antwort (Debug):"
  echo "$TEST_RESPONSE" | head -5
  echo ""
  echo "Zum Zurücksetzen des Cookies:"
  echo "  security delete-generic-password -s \"magnific-session\""
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
  local RESPONSE

  if [ -z "$PARENT_REF" ]; then
    RESPONSE=$(api_get "/folders?onlyProjects=true")
  else
    RESPONSE=$(api_get "/folders?parentReference=$PARENT_REF")
  fi

  local COUNT
  COUNT=$(echo "$RESPONSE" | jq '.items | length' 2>/dev/null)
  [ -z "$COUNT" ] || [ "$COUNT" == "null" ] || [ "$COUNT" -eq 0 ] && return

  for idx in $(seq 0 $((COUNT - 1))); do
    local NAME
    NAME=$(echo "$RESPONSE" | jq -r ".items[$idx].name")
    local REF
    REF=$(echo "$RESPONSE" | jq -r ".items[$idx].reference")
    local FPATH="${PREFIX}${NAME}"

    FOLDER_PATHS[$FOLDER_COUNT]="$FPATH"
    FOLDER_REFS[$FOLDER_COUNT]="$REF"
    FOLDER_COUNT=$((FOLDER_COUNT + 1))

    load_folders "$REF" "${FPATH}/"
  done
}

echo "Lade Ordnerstruktur..."
load_folders "" ""

if [ "$FOLDER_COUNT" -eq 0 ]; then
  echo -e "${RED}Keine Ordner gefunden.${NC}"
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

# --- History laden ---
touch "$HISTORY_FILE"
ALREADY_DOWNLOADED=$(cat "$HISTORY_FILE")

# --- Download-Funktion ---
TOTAL_DOWNLOADED=0
TOTAL_SKIPPED=0

download_folder() {
  local FOLDER_REF="$1"
  local FOLDER_PATH="$2"
  local LOCAL_DIR="${OUTPUT_DIR}/${FOLDER_PATH}"
  local FOLDER_LABEL
  FOLDER_LABEL=$(echo "$FOLDER_PATH" | sed 's/\//_/g; s/ /-/g')

  mkdir -p "$LOCAL_DIR"

  # Fortlaufende Nummerierung: höchste Nummer im Ordner finden
  local LAST_NUM
  LAST_NUM=$(ls "$LOCAL_DIR" 2>/dev/null | grep -oE '_([0-9]{3})\.' | grep -oE '[0-9]{3}' | sort -n | tail -1)
  local COUNTER=${LAST_NUM:-0}
  COUNTER=$((10#$COUNTER))

  local PAGE=1
  local FOLDER_DL=0
  local FOLDER_SKIP=0

  while true; do
    local SEARCH
    SEARCH=$(api_get "/creations/search?from=folder&reference=$FOLDER_REF&fileType=image&page=$PAGE")

    local ITEMS
    ITEMS=$(echo "$SEARCH" | jq '.items | length' 2>/dev/null)
    local LAST_PAGE
    LAST_PAGE=$(echo "$SEARCH" | jq '.pagination.lastPage // 1' 2>/dev/null)

    [ -z "$ITEMS" ] || [ "$ITEMS" == "0" ] || [ "$ITEMS" == "null" ] && break

    for j in $(seq 0 $((ITEMS - 1))); do
      local ID
      ID=$(echo "$SEARCH" | jq -r ".items[$j].identifier")
      local PROMPT
      PROMPT=$(echo "$SEARCH" | jq -r ".items[$j].prompt // empty")

      # Bereits heruntergeladen?
      if echo "$ALREADY_DOWNLOADED" | grep -qF "$ID"; then
        FOLDER_SKIP=$((FOLDER_SKIP + 1))
        TOTAL_SKIPPED=$((TOTAL_SKIPPED + 1))
        continue
      fi

      # Detail-Daten holen (für Download-URL)
      local DETAIL
      DETAIL=$(api_get "/creations/$ID")
      local URL
      URL=$(echo "$DETAIL" | jq -r '.url // empty')
      local DETAIL_PROMPT
      DETAIL_PROMPT=$(echo "$DETAIL" | jq -r '.metadata.prompt // empty')

      [ -z "$PROMPT" ] && PROMPT="$DETAIL_PROMPT"
      [ -z "$URL" ] && continue

      # Erstellungsdatum aus API verwenden
      local CREATED_AT
      CREATED_AT=$(echo "$DETAIL" | jq -r '.createdAt // empty')
      local IMG_DATE
      if [ -n "$CREATED_AT" ]; then
        IMG_DATE=$(echo "$CREATED_AT" | cut -c1-10 | tr -d '-')
      else
        IMG_DATE=$(date +%Y%m%d)
      fi

      COUNTER=$((COUNTER + 1))
      local NUM
      NUM=$(printf "%03d" $COUNTER)
      local BASE="${IMG_DATE}_${FOLDER_LABEL}_Magnific_${NUM}"

      # PNG
      if [[ "$FORMAT_CHOICE" == "2" || "$FORMAT_CHOICE" == "3" ]]; then
        echo -e "  ${GREEN}↓${NC} ${FOLDER_PATH}/${BASE}.png ${CYAN}(neu)${NC}"
        curl -sL "$URL" -o "$LOCAL_DIR/${BASE}.png"

        if [ -n "$PROMPT" ]; then
          exiftool \
            -ImageDescription="$PROMPT" \
            -Caption-Abstract="$PROMPT" \
            -Description="$PROMPT" \
            -Title="${FOLDER_LABEL} ${NUM}" \
            -ObjectName="${FOLDER_LABEL} ${NUM}" \
            -overwrite_original "$LOCAL_DIR/${BASE}.png" >/dev/null 2>&1
        fi
      fi

      # JPG
      if [[ "$FORMAT_CHOICE" == "1" || "$FORMAT_CHOICE" == "3" ]]; then
        echo -e "  ${GREEN}↓${NC} ${FOLDER_PATH}/${BASE}.jpg ${CYAN}(neu)${NC}"

        if [[ "$FORMAT_CHOICE" == "3" ]]; then
          python3 -c "from PIL import Image; Image.open('$LOCAL_DIR/${BASE}.png').convert('RGB').save('$LOCAL_DIR/${BASE}.jpg', 'JPEG', quality=95)" 2>/dev/null
        else
          curl -sL "$URL" -o "$LOCAL_DIR/${BASE}.jpg"
        fi

        if [ -n "$PROMPT" ]; then
          exiftool \
            -ImageDescription="$PROMPT" \
            -Caption-Abstract="$PROMPT" \
            -Description="$PROMPT" \
            -Title="${FOLDER_LABEL} ${NUM}" \
            -ObjectName="${FOLDER_LABEL} ${NUM}" \
            -overwrite_original "$LOCAL_DIR/${BASE}.jpg" >/dev/null 2>&1
        fi
      fi

      # Als heruntergeladen markieren
      echo "$ID" >> "$HISTORY_FILE"
      FOLDER_DL=$((FOLDER_DL + 1))
      TOTAL_DOWNLOADED=$((TOTAL_DOWNLOADED + 1))

      # Kurze Pause um Rate-Limits zu vermeiden
      sleep 0.2
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

# Ordner im Finder öffnen
if [ "$TOTAL_DOWNLOADED" -gt 0 ]; then
  open "$OUTPUT_DIR" 2>/dev/null
fi

echo ""
read -rp "Drücke Enter zum Beenden..."
