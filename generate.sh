#!/bin/bash

# generate.sh
# by jerieljan

# This script generates a PDF and HTML version of the
# Markdown document with the `theme.css` 
# stylesheet.

# Usage: `generate.sh <file_to_process>.md`


## User configurable settings.

INPUT_FILE="${1}"
STYLESHEET="theme.css"

## Initialize directories to properly run commands.

WORKING=`pwd`
cd "$(dirname "$0")"
POSAUNE_DIR=`pwd`
cd "${WORKING}"

## This function processes a single file and generates an HTML and PDF version with the provided stylesheet.
function convert_file() {
    FILE="${1}"
    POSAUNE_DIR="${2}"
    STYLESHEET="${3}"
   
    FILENAME="${FILE%.*}"

    pandoc -f markdown --css "${POSAUNE_DIR}/${STYLESHEET}" --to=html5 "${FILENAME}.md" -o "${FILENAME}.html" --self-contained && wkhtmltopdf --dpi 500 "${FILENAME}.html" "${FILENAME}.pdf" && echo "Generated ${FILENAME}.html and ${FILENAME}.pdf"
}

## Process a single file using the convert_file function.

convert_file "${INPUT_FILE}" "${POSAUNE_DIR}" "${STYLESHEET}" || echo "ERROR: File could not be converted."


# -- TIPS --

## Process each file.

# for ITEM in "${WORKING}"/*.md; do
#    convert_file "${ITEM}" "${WORKING}" "${STYLESHEET}"
# done

# Want to process in `parallel`?
# export -f convert_file
# find "${WORKING}" -name '*.md' | parallel -q convert_file "{}" "${WORKING}" "${STYLESHEET}"


