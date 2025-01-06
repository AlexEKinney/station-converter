#!/bin/bash

# Checking to see if you have the required tools installed
if ! command -v xmlstarlet &> /dev/null; then
    echo "Error: xmlstarlet is not installed. Please install using your package manager it and try again."
    exit 1
fi

INPUT_FILE="StationsRefData_v1.2.xml"
OUTPUT_FILE="codes.csv"

xmlstarlet sel -T -t \
  -m "//Station[OJPEnabled='true' and DarwinEnabled='true']" \
  -v "concat('\"', Name, '\",', CRS)" -n \
  "$INPUT_FILE" | grep -v '^$' > "$OUTPUT_FILE"

echo "Done! Updated '$OUTPUT_FILE'."
