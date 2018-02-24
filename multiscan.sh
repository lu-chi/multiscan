#!/usr/bin/env bash

[ ! -f ./$1 ] && { echo "File not found!"; }

# filter out commented lines
fl=$(grep -v '^#' $1)

# for each run fast scan
for idx in $fl; do
    echo "Checking $idx"
    nmap -F $idx
done

