#!/bin/bash
# Magnific Image Downloader
# Reads download_*.sh scripts and skips files that already exist locally.
# Usage: bash download.sh

DIR="$HOME/Downloads/magnific"
SKIPPED=0
DOWNLOADED=0
FAILED=0

for script in "$(dirname "$0")"/download_*.sh; do
  [ -f "$script" ] || continue
  echo "Processing $script..."

  while IFS= read -r line; do
    # Extract curl lines: curl -sL -o "path" "url"
    if [[ "$line" =~ ^curl\ -sL\ -o\ \"([^\"]+)\"\ \"([^\"]+)\" ]]; then
      raw_path="${BASH_REMATCH[1]}"
      url="${BASH_REMATCH[2]}"
      # Resolve $DIR variable in path
      filepath="${raw_path//\$DIR/$DIR}"
      filepath="${filepath//\"\$HOME\"/\"$HOME\"}"
      filepath=$(eval echo "$raw_path")

      if [ -f "$filepath" ] && [ -s "$filepath" ]; then
        SKIPPED=$((SKIPPED + 1))
      else
        mkdir -p "$(dirname "$filepath")"
        if curl -sL -o "$filepath" "$url"; then
          # Verify it's not an error page
          if file "$filepath" | grep -q "text"; then
            echo "WARN: $filepath is not an image, removing"
            rm -f "$filepath"
            FAILED=$((FAILED + 1))
          else
            DOWNLOADED=$((DOWNLOADED + 1))
            echo "OK: $(basename "$filepath")"
          fi
        else
          FAILED=$((FAILED + 1))
          echo "FAIL: $(basename "$filepath")"
        fi
      fi
    fi
  done < "$script"
done

echo ""
echo "=== Fertig ==="
echo "Heruntergeladen: $DOWNLOADED"
echo "Übersprungen (existiert): $SKIPPED"
echo "Fehlgeschlagen: $FAILED"
