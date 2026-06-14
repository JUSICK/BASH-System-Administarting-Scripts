#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Usage: $0 <at least one argument>" >&2
    exit 1
fi

for path in "$@"; do
    status=""

    if [ ! -e "$path" ]; then
        status="MISSING"
    elif [ -f "$path" ] && [ -r "$path" ]; then
        status="READABLE_FILE"
    elif [ -d "$path" ] && [ -w "$path" ]; then
        status="WRITABLE_DIR"
    else
        status="OTHER"
    fi
    
    case "$status" in
        MISSING|READABLE_FILE|WRITABLE_DIR|OTHER)
            printf "%s\t%s\n" "$path" "$status"
            ;;
    esac
done
