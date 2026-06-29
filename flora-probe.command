#!/bin/bash
# ============================================
# Flora Probe – Diagnose der Daten-Struktur
# ============================================
# Einmalig doppelklicken. Gibt Nodes, Assets (mit uploaded_via)
# und Canvas-Graph aus, damit wir Referenzbilder filtern und die
# Prompt-Zuordnung korrekt bauen koennen.
# Ergebnis -> flora-probe-output.txt neben diesem Skript.
# ============================================

cd "$(dirname "$0")" || exit 1
API_BASE="https://app.flora.ai/api/v1"
OUT="flora-probe-output.txt"

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
read -rp "Welches Projekt? (A Life Beyond Limits): " C
C=${C:-1}
PID=$(echo "$PRJ" | jq -r ".projects[$((C - 1))].project_id")
PNAME=$(echo "$PRJ" | jq -r ".projects[$((C - 1))].name")

{
  echo "=== PROJEKT: $PNAME ($PID) ==="
  echo ""
  echo "=== ASSETS: uploaded_via je Bild (generation vs. Referenz) ==="
  curl -s "$API_BASE/assets?project_id=$PID&limit=200" -H "Authorization: Bearer $FLORA_API_KEY" \
    | jq '[.assets[] | select(.content_type=="image") | {asset_id, node_id, uploaded_via, created_at, url}]'
  echo ""
  echo "=== NODES: image-Nodes (node_id, label, url) ==="
  curl -s "$API_BASE/projects/$PID/nodes?limit=200" -H "Authorization: Bearer $FLORA_API_KEY" \
    | jq '[.nodes[] | select(.type=="image") | {node_id, label, url}]'
  echo ""
  echo "=== NODES: text-Nodes (node_id, gekuerzter prompt) ==="
  curl -s "$API_BASE/projects/$PID/nodes?limit=200" -H "Authorization: Bearer $FLORA_API_KEY" \
    | jq '[.nodes[] | select(.type=="text") | {node_id, prompt: (.url[0:80])}]'
  echo ""
  echo "=== CANVAS: Mermaid-Graph (Kanten Text->Bild) ==="
  curl -s "$API_BASE/projects/$PID/canvas" -H "Authorization: Bearer $FLORA_API_KEY" \
    | jq -r '.summary, .diagram'
} | tee "$OUT"

echo ""
echo "Fertig: $(pwd)/$OUT"
echo "Bitte schick mir den Inhalt von $OUT."
read -rp "Drücke Enter zum Beenden..."
