#!/bin/bash

dir=input/records.txt

while IFS= read -r line; do
    if [[ "$line" =~ ^ID=[0-9]+';'USER=[A-Za-z0-9]+';'ROLE=(ADMIN|USER)$ ]]; then
        echo "Valid line: $line"
    fi
done < "$dir"
