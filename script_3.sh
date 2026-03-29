Script 3: Disk and Permission Auditor (script3.sh)

Bash
#!/bin/bash
# Script 3: Disk and Permission Auditor
# Concepts used: for loop, df, ls -ld, awk.

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "         Directory Audit Report           "
echo "=========================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Extract size, suppress errors if permission denied
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "Dir: $DIR | Perms: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done
PY_DIR="/usr/lib/python3"
if [ -d "$PY_DIR" ]; then
    PY_PERMS=$(ls -ld "$PY_DIR" | awk '{print $1}')
    echo "Python Lib ($PY_DIR) permissions: $PY_PERMS"
fi