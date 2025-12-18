#!/usr/bin/env bash
set -euo pipefail

# Go to the extracted dataset (adjust if your repo structure differs)
cd shell-lesson/data

echo "TASK 1: first three lines of 2014-01_JA.tsv"
head -n 3 2014-01_JA.tsv

echo ""
echo "TASK 2: total number of lines in each *.tsv"
# prints: <lines> <filename>
wc -l ./*.tsv

echo ""
echo "TASK 3: file with the highest number of lines + how many (single pipeline)"
# wc -l gives "lines filename"; sort numeric descending; take first
wc -l ./*.tsv | sort -nr | head -n 1