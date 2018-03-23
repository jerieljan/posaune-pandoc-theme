#!/bin/bash

# generate.sh

# This script generates a PDF and HTML version of the
# Markdown document with the `theme.css` 
# stylesheet.

STYLESHEET="theme.css"

cd "$(dirname "$0")"
WORKING=`pwd`

function convert_file() {
    FILE="${1}"
    WORKING="${2}"
    STYLESHEET="${3}"
   
    FILENAME=`echo "${FILE}" | sed "s_${WORKING}/__g" | sed "s/.md//g"`

    pandoc -f markdown --css "${STYLESHEET}" --to=html5 "${FILENAME}.md" -o "${FILENAME}.html" --self-contained && wkhtmltopdf --dpi 500 "${FILENAME}.html" "${FILENAME}.pdf" && echo "Generated ${FILENAME}.html and ${FILENAME}.md"
}

cd "${WORKING}"

# Process each file.
for ITEM in "${WORKING}"/*.md; do
    convert_file "${ITEM}" "${WORKING}" "${STYLESHEET}"
done

# Want to process in `parallel`?
# export -f convert_file
#find "${WORKING}" -name '*.md' | parallel -q convert_file "{}" "${WORKING}" "${STYLESHEET}"


