#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

file=$1
i=0

i=$(grep -c "ERROR" "$file")

echo "Number of ERROR messages found: $i"
