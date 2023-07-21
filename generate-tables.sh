#!/bin/bash

# defaults
JSON_TO_SMART_CSV=JsonToSmartCsv-0.2-release/osx-x64/JsonToSmartCsv
INPUT_DIRECTORY=sample-data
OUTPUT_DIRECTORY=sample-output

# checks
if [[ -z "$INPUT_DIRECTORY" ]]; then
   echo "Please provide a directory to scan for json data as the first argument."
   exit 1
fi

if [[ ! -d "$INPUT_DIRECTORY" ]]; then
   echo "Directory $INPUT_DIRECTORY does not exist."
   exit 1
fi

rm -f $OUTPUT_DIRECTORY/*
for SOURCE_FILE in $INPUT_DIRECTORY/*.json; do
   echo "Processing $SOURCE_FILE..."
   $JSON_TO_SMART_CSV --source $SOURCE_FILE --columns cols-cases-to-solves.json --target $OUTPUT_DIRECTORY/cases-to-solves.csv --mode Append
   $JSON_TO_SMART_CSV --source $SOURCE_FILE --columns cols-users-info.json --target $OUTPUT_DIRECTORY/users-info.csv --mode Append
done
