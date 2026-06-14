#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <project name> <priority> <output directory>" >&2
    exit 1
fi

name="$1"
priority="$2"
directory="$3"

case "$priority" in

    low|medium|high ) ;;

    *)
        echo "ERRROR: Incorret priority '$priority'. Alowed: low, medium, high." >&2
        exit 2
        ;;
esac

if [ ! -d "$directory" ]; then
    echo "ERROR: Output directory '$directory' doesn't exist." >&2
    exit 3
fi


data=$(date +%Y-%m-%d)
filename="${priority}_${data}.txt"
file="${directory%/}/${filename}"

if [ -e "$file" ]; then
    echo "ERROR: File '$file' already exists" >&2
    exit 4
fi

echo "name=$name" > "$file"
echo "priority=$priority" >> "$file"
echo "created_at=$data" >> "$file"

echo "$file"
