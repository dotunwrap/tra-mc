#!/usr/bin/env bash

set -euo pipefail

MODS_DIR="./.mods"
MODS_JSON="mods.json"
OUTPUT_FILE="mods.lock"

if ! command -v b3sum &>/dev/null; then
  echo "Error: b3sum is not installed. Please install it first." >&2
  exit 1
fi

if ! command -v jq &>/dev/null; then
  echo "Error: jq is not installed. Please install it first." >&2
  exit 1
fi

if [ ! -f "$MODS_JSON" ]; then
  echo "Error: File $MODS_JSON does not exist." >&2
  exit 1
fi

if [ ! -d "$MODS_DIR" ]; then
  echo "Error: Directory $MODS_DIR does not exist." >&2
  exit 1
fi

# Start with empty object
jq -n '{}' >"$OUTPUT_FILE.tmp"

# Read mods.json and process each mod
jq -r 'to_entries[] | "\(.key)\t\(.value)"' "$MODS_JSON" | while IFS=$'\t' read -r mod_name url; do
  # Extract filename from URL
  filename=$(basename "$url")
  filepath="$MODS_DIR/$filename"

  if [ -f "$filepath" ]; then
    size=$(stat -c%s "$filepath")
    checksum=$(b3sum "$filepath" | cut -d' ' -f1)

    # Add this mod's data to the output file
    jq --arg mod_name "$mod_name" \
      --arg path "$filepath" \
      --argjson size "$size" \
      --arg checksum "blake3:$checksum" \
      '.[$mod_name] = {path: $path, size: $size, checksum: $checksum}' \
      "$OUTPUT_FILE.tmp" >"$OUTPUT_FILE.tmp2"
    mv "$OUTPUT_FILE.tmp2" "$OUTPUT_FILE.tmp"
  else
    echo "ERROR: File not found for mod $mod_name: $filepath" >&2
    rm "$OUTPUT_FILE.tmp"
    exit 1
  fi
done

mv "$OUTPUT_FILE.tmp" "$OUTPUT_FILE"

echo "Lock file generated: $OUTPUT_FILE"
