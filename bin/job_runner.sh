#!/bin/bash

CONFIG_FILE="config/job.env"

if [ ! -f "$CONFIG_FILE" ]; then
    echo "Blad: Brak pliku konfiguracyjnego $CONFIG_FILE" >&2
    exit 1
fi
source "$CONFIG_FILE"

declare -A validation

[[ -n "$INPUT_DIR" && -d "$INPUT_DIR" ]] && validation[INPUT_DIR]="OK" || validation[INPUT_DIR]="FAIL"
[[ -n "$REPORT_DIR" ]] && validation[REPORT_DIR]="OK" || validation[REPORT_DIR]="FAIL"
[[ -n "$OUTPUT_FILE" ]] && validation[OUTPUT_FILE]="OK" || validation[OUTPUT_FILE]="FAIL"
[[ -n "$LOG_FILE" ]] && validation[LOG_FILE]="OK" || validation[LOG_FILE]="FAIL"

command -v find &>/dev/null && validation[find]="OK" || validation[find]="FAIL"
command -v mktemp &>/dev/null && validation[mktemp]="OK" || validation[mktemp]="FAIL"

failed=0
for key in "${!validation[@]}"; do
    if [ "${validation[$key]}" == "FAIL" ]; then
        echo "Blad walidacji srodowiska: $key ma status FAIL" >&2
        failed=$((failed + 1))
    fi
done

if [ "$failed" -gt 0 ]; then
    exit 2
fi

mkdir -p "$REPORT_DIR"

mkdir -p "$(dirname "$LOG_FILE")"

TMP_DIR=$(mktemp -d)
if [ ! -d "$TMP_DIR" ]; then
    echo "Blad: Krytyczna awaria mktemp." >&2
    exit 3
fi

cleanup() {
    rm -rf "$TMP_DIR"
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Czyszczenie wykonane." >> "$LOG_FILE"
}
trap cleanup EXIT

TMP_REPORT="$TMP_DIR/report.tmp"

echo "$(date '+%Y-%m-%d %H:%M:%S') - Start generowania raportu." > "$LOG_FILE"


printf "path\tsize_bytes\n" > "$TMP_REPORT"

find "$INPUT_DIR" -maxdepth 1 -type f -printf "%p\t%s\n" >> "$TMP_REPORT" 2>> "$LOG_FILE"


FINAL_TARGET="${REPORT_DIR%/}/$OUTPUT_FILE"
if mv "$TMP_REPORT" "$FINAL_TARGET"; then
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Sukces: Przeniesienie raportu wykonane." >> "$LOG_FILE"
    echo "Operacja zakończona sukcesem. Raport: $FINAL_TARGET"
else
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Bladd podczas operacji atomowej mv." >> "$LOG_FILE"
    exit 4
fi