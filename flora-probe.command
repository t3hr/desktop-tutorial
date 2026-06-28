#!/bin/bash
# ============================================
# Flora Probe – Diagnose der Daten-Struktur
# ============================================
# Einmalig doppelklicken. Gibt Beispiel-Nodes + Canvas-Graph aus,
# damit wir den Per-Bild-Prompt korrekt verdrahten können.
# Speichert das Ergebnis in flora-probe-output.txt neben diesem Skript.
# ============================================

cd "$(dirname "$0")" || exit 1
API_BASE="https://app.flora.ai/api/v1"
OUT="flora-probe-output.txt"

# --- API-Key aus Schlüsselbund ---
FLORA_API_KEY=$(security find-generic-password -s "flora-api-key" -w 2>/dev/null)
if [ -z "$FLORA_API_KEY" ]; then
  read -rp "Flora API-Key: " FLORA_API_KEY
fi

echo "Lade Workspaces..."
WS=$(curl -s "$API_BASE/workspaces" -H "Authorization: Bearer $FLORA_API_KEY")
WORKSPACE_ID=$(echo "$WS" | jq -r '.workspaces[0].workspace_id')

echo "Lade Projekte..."
PRJ=$(curl -s "$API_BASE/projects?workspace_id=$WORKSPACE_ID&limit=50" -H "Authorization: Bearer $FLORA_API_KEY")
COUNT=$(echo "$PRJ" | jq '.projects | length')
echo ""
for i in $(seq 0 $((COUNT - 1))); do
  echo "  $((i + 1))) $(echo "$PRJ" | jq -r ".projects[$i].name")"
done
echo ""
read -rp "Welches Projekt? [1]: " C
C=${C:-1}
PID=$(echo "$PRJ" | jq -r ".projects[$((C - 1))].project_id")
PNAME=$(echo "$PRJ" | jq -r ".projects[$((C - 1))].name")

{
  echo "=== PROJEKT: $PNAME ($PID) ==="
  echo ""
  echo "=== /nodes  (erste Seite, roh) ==="
  curl -s "$API_BASE/projects/$PID/nodes?limit=100" -H "Authorization: Bearer $FLORA_API_KEY" \
    | jq '{meta, nodes: [.nodes[] | {node_id, type, label, asset_id, url}]}'
  echo ""
  echo "=== Beispiel: 3 image-Nodes mit vollem label ==="
  curl -s "$API_BASE/projects/$PID/nodes?limit=100" -H "Authorization: Bearer $FLORA_API_KEY" \
    | jq '[.nodes[] | select(.type=="image")] | .[0:3]'
  echo ""
  echo "=== Beispiel: 3 text-Nodes ==="
  curl -s "$API_BASE/projects/$PID/nodes?limit=100" -H "Authorization: Bearer $FLORA_API_KEY" \
    | jq '[.nodes[] | select(.type=="text")] | .[0:3]'
  echo ""
  echo "=== /canvas  (Mermaid-Graph) ==="
  curl -s "$API_BASE/projects/$PID/canvas" -H "Authorization: Bearer $FLORA_API_KEY" \
    | jq -r '.summary, .diagram'
  echo ""
  echo "=== /assets?project_id  (asset_id, node_id, name, description) ==="
  curl -s "$API_BASE/assets?project_id=$PID&limit=100" -H "Authorization: Bearer $FLORA_API_KEY" \
    | jq '[.assets[] | {asset_id, node_id, content_type, name, description}]'
  echo ""
  echo "=== Einzel-Asset Detail (erstes image-Asset) ==="
  FIRST_ASSET=$(curl -s "$API_BASE/projects/$PID/nodes?limit=100" -H "Authorization: Bearer $FLORA_API_KEY" \
    | jq -r 'first(.nodes[] | select(.type=="image") | .asset_id) // empty')
  if [ -n "$FIRST_ASSET" ]; then
    echo "asset_id: $FIRST_ASSET"
    curl -s "$API_BASE/assets/$FIRST_ASSET" -H "Authorization: Bearer $FLORA_API_KEY" \
      | jq '{asset_id, name, description, uploaded_via, content_type}'
  fi
} | tee "$OUT"

echo ""
echo "Fertig. Ergebnis liegt in: $(pwd)/$OUT"
echo "Bitte schick mir den Inhalt von $OUT (oder die Datei)."
read -rp "Drücke Enter zum Beenden..."
