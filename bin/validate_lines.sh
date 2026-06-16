#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

file="$1"

while IFS= read -r line; do
    if [[ "$line" =~ ^ID=[0-9]+;USER=[A-Za-z0-9]+;ROLE=(ADMIN|USER)$ ]]; then
        echo "Valid line: $line"
    fi
done < "$file"