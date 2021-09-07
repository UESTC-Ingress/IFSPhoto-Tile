#!/bin/bash

RAW_DIR=./data_pre
DST_DIR=./public/assets

PHOTOS=()

mkdir -p src/data
mkdir -p data_pre
mkdir -p public/assets

rm -f $DST_DIR/*

for file in $RAW_DIR/*
do
  echo "Processing [${file##*/}]..."
  # convert "$RAW_DIR/${file##*/}" -gravity center -crop 1:1 -resize 512x512 "$DST_DIR/${file##*/}"
  RAND_FILE="${RANDOM}_${file##*/}"
  cp "$RAW_DIR/${file##*/}" "$DST_DIR/$RAND_FILE"
  PHOTOS+=("$RAND_FILE")
done

printf '%s\n' "${PHOTOS[@]}" | jq -R . | jq -s . > src/data/data.json
echo "Finished!"
