#!/usr/bin/env bash

set -euo pipefail

MODS_DIR="./.mods"
MODS_FILE="mods.json"
LOCK_FILE="mods.lock"

if ! command -v b3sum &>/dev/null; then
  echo "Error: b3sum is not installed. Please install it first." >&2
  exit 1
fi

if ! command -v jq &>/dev/null; then
  echo "Error: jq is not installed. Please install it first." >&2
  exit 1
fi

if ! command -v curl &>/dev/null; then
  echo "Error: curl is not installed. Please install it first." >&2
  exit 1
fi

if [ ! -f "$MODS_FILE" ]; then
  echo "Error: File $MODS_FILE does not exist." >&2
  exit 1
fi

# Create mods directory if it doesn't exist
mkdir -p "$MODS_DIR"

# Function to check if a file needs downloading
needs_download() {
  local mod_name="$1"
  local filepath="$2"

  # If lock file doesn't exist, need to download
  if [ ! -f "$LOCK_FILE" ]; then
    return 0
  fi

  # If file doesn't exist, need to download
  if [ ! -f "$filepath" ]; then
    return 0
  fi

  # Check if mod exists in lock file
  if ! jq -e --arg mod "$mod_name" '.[$mod]' "$LOCK_FILE" &>/dev/null; then
    return 0
  fi

  # Get metadata from lock file
  local lock_checksum=$(jq -r --arg mod "$mod_name" '.[$mod].checksum' "$LOCK_FILE")
  local lock_size=$(jq -r --arg mod "$mod_name" '.[$mod].size' "$LOCK_FILE")

  # Get current file metadata
  local current_size=$(stat -c%s "$filepath")
  local current_checksum="blake3:$(b3sum "$filepath" | cut -d' ' -f1)"

  # If metadata doesn't match, need to download
  if [ "$lock_checksum" != "$current_checksum" ] || [ "$lock_size" != "$current_size" ]; then
    return 0
  fi

  # File is up to date
  return 1
}

# Track if we need to regenerate lock file
TEMP_MARKER="/tmp/mods_downloaded_$$"
rm -f "$TEMP_MARKER"

# Build list of expected files
declare -A expected_files

# Read mods.json and process each mod
while IFS=$'\t' read -r mod_name url; do
  filename=$(basename "$url")
  filepath="$MODS_DIR/$filename"
  expected_files["$filename"]=1

  if needs_download "$mod_name" "$filepath"; then
    echo "Downloading $mod_name..."
    if ! curl -fL --retry 3 --retry-delay 2 -o "$filepath" "$url"; then
      echo "Error: Failed to download $mod_name from $url" >&2
      rm -f "$filepath"  # Clean up any partial/error file
      exit 1
    fi
    touch "$TEMP_MARKER"
  else
    echo "Skipping $mod_name (up to date)"
  fi
done < <(jq -r 'to_entries[] | "\(.key)\t\(.value)"' "$MODS_FILE")

# Remove any files in .mods/ that aren't in mods.json
if [ -d "$MODS_DIR" ]; then
  for file in "$MODS_DIR"/*; do
    if [ -f "$file" ]; then
      filename=$(basename "$file")
      if [ -z "${expected_files[$filename]:-}" ]; then
        echo "Removing orphaned file: $filename"
        rm -f "$file"
        touch "$TEMP_MARKER"
      fi
    fi
  done
fi

# Generate lock file if we downloaded anything or if lock file doesn't exist
if [ -f "$TEMP_MARKER" ] || [ ! -f "$LOCK_FILE" ]; then
  echo "Generating lock file..."
  source "$(dirname "$0")/lock.sh"
  rm -f "$TEMP_MARKER"
else
  echo "All mods up to date."
fi
