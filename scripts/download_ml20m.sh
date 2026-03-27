#!/usr/bin/env bash
set -euo pipefail

DATA_DIR="data"
ZIP_PATH="$DATA_DIR/ml-20m.zip"
URL="https://files.grouplens.org/datasets/movielens/ml-20m.zip"

mkdir -p "$DATA_DIR"

echo "Downloading MovieLens 20M..."
curl -L "$URL" -o "$ZIP_PATH"

echo "Unzipping..."
unzip -o "$ZIP_PATH" -d "$DATA_DIR"

echo "Done."
echo "Files are in: $DATA_DIR/ml-20m"
