#!/bin/bash


if [ "$#" -ne 3 ]; then
    echo "Blad: Niepoprawna liczba argumentow." >&2
    echo "Uzycie: $0 <nazwa projektu> <priorytet> <katalog wyjsiowy>" >&2
    exit 1
fi

nazwa="$1"
priorytet="$2"
katalog="$3"

case "$priorytet" in

    low|medium|high ) ;;

    *)
        echo "Blad: Niepoprawny priorytet '$priorytet'. Dozwolone: low, medium, high." >&2
        exit 2
        ;;
esac

if [ ! -d "$katalog" ]; then
    echo "Blad: Katalog wyjsciowy '$katalog' nie istnieje." >&2
    exit 3
fi


data=$(date +%Y-%m-%d)
nazwapliku="${priorytet}_${data}.txt"
plik="${katalog%/}/${nazwapliku}"

if [ -e "$plik" ]; then
    echo "Blad: Plik '$plik' juz istnieje" >&2
    exit 4
fi

echo "name=$nazwa" > "$plik"
echo "priority=$priorytet" >> "$plik"
echo "created_at=$data" >> "$plik"

echo "$plik"
