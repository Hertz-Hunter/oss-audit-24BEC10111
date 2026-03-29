Script 4: Log File Analyzer (script4.sh)

Bash
#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/syslog error
# Concepts used: while read loop, if-then, counters, arguments.

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is error
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found or you lack read permissions."
    exit 1
fi

echo "Scanning $LOGFILE for '$KEYWORD'..."
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times."
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5