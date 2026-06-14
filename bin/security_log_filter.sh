#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Blad: Niepoprawna liczba argumentow." >&2
    echo "Uzycie: $0 <log>" >&2
    exit 1
fi

log_plik="$1"

if [ ! -f "$log_plik" ]; then
    echo "Blad: Plik logu '$log_plik' nie istnieje." >&2
    exit 2
fi

wyjscie="reports/security_log_filter.txt"

liczba=$(grep -E "path_traversal|forbidden|login_failed" "$log_plik" | wc -l)

echo "SUSPICIOUS=$liczba" >> "$wyjscie"