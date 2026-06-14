#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

dir=$1
i=0

while IFS= read -r line; do
    if echo "$line" | grep -q "ERROR"; then
        (( i++ ))
    fi
done < "$dir"

echo "Number of ERROR messages found: $i"
