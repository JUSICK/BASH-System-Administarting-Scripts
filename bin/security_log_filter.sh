#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <log>" >&2
    exit 1
fi

log_file="$1"

if [ ! -f "$log_file" ]; then
    echo "ERROR: Log file '$log_file' doesn't exist." >&2
    exit 2
fi

output="reports/security_log_filter.txt"

num=$(grep -E "path_traversal|forbidden|login_failed" "$log_file" | wc -l)

echo "SUSPICIOUS=$num" >> "$output"
