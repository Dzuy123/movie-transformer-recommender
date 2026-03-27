#!/usr/bin/env bash
set -euo pipefail

DATA_DIR="data"
ZIP_PATH="$DATA_DIR/ml-20m.zip"
EXTRACT_DIR="$DATA_DIR/ml-20m"
URL="https://files.grouplens.org/datasets/movielens/ml-20m.zip"

mkdir -p "$DATA_DIR"

if [ -d "$EXTRACT_DIR" ] && [ -f "$EXTRACT_DIR/rating.csv" -o -f "$EXTRACT_DIR/ratings.csv" ]; then
  echo "MovieLens 20M already exists in $EXTRACT_DIR"
  echo "Skipping download."
  exit 0
fi

echo "Downloading MovieLens 20M..."
curl -L "$URL" -o "$ZIP_PATH"

echo "Unzipping..."
unzip -o "$ZIP_PATH" -d "$DATA_DIR"

echo "Done."
echo "Files are in: $EXTRACT_DIR"

# chmod +x scripts/download_ml20m.sh