#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4_log_analyzer.sh [logfile] [keyword]
# Author: Dakshal Srivastava | Reg No: 24BSA10115
# Course: Open Source Software | Software Choice: Git

LOGFILE=${1:-"dummy.log"}
KEYWORD=${2:-"commit"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

# Do-while style retry to wait if the file is currently empty
while [ ! -s "$LOGFILE" ]; do
    echo "Waiting for data in $LOGFILE... (retrying in 2 seconds)"
    sleep 2
done

# Read file line by line to count matching keyword occurrences
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        ((COUNT++))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' appeared $COUNT times in $LOGFILE."

if [ "$COUNT" -gt 0 ]; then
    echo ""
    echo "Last 5 matches:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
