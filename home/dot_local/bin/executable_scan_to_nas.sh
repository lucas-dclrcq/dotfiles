#!/bin/bash

mkdir -p /tmp/consume

FILENAME="$(date '+%Y%m%d_%H%M%S').pdf"
TMP_PATH="/tmp/consume/${FILENAME}"
CONSUME_PATH="/mnt/nas/Documents/consume/${FILENAME}"

scanimage --device "brother4:bus2;dev2" --format=pdf --output-file "${TMP_PATH}" --progress

mv "${TMP_PATH}" "${CONSUME_PATH}"
