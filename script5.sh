Script 5: Open Source Manifesto Generator (script5.sh)

Bash
#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Concepts used: read, string concatenation, writing to file, date.

echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"
echo "My Open Source Manifesto ($DATE)" > "$OUTPUT"
echo "I rely on $TOOL every single day." >> "$OUTPUT"
echo "To me, open source freedom means $FREEDOM." >> "$OUTPUT"
echo "If I could, I would build a $BUILD and share it with the world." >> "$OUTPUT"

echo "--------------------------------------------------"
echo "Manifesto saved to $OUTPUT. Here is what it says:"
cat "$OUTPUT"