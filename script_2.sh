Script 2: FOSS Package Inspector (script2.sh)

Bash
#!/bin/bash
# Script 2: FOSS Package Inspector
# Concepts used: if-then-else, case statement, dpkg, pipe with grep.

PACKAGE="python3"

# Check if package is installed using dpkg (for Debian/Ubuntu based systems)
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "$PACKAGE is installed."
    # Extracting version and description info
    dpkg -s $PACKAGE | grep -E '^Version|^Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo "------------------------------------------"
case $PACKAGE in
    python3) echo "Philosophy: Python represents a language shaped entirely by community." ;;
    apache2) echo "Philosophy: Apache is the web server that built the open internet." ;;
    mysql-server) echo "Philosophy: MySQL is open source at the heart of millions of apps." ;;
    *) echo "Philosophy: Tool philosophy not defined." ;;
esac