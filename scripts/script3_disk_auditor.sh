#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Dakshal Srivastava | Reg No: 24BSA10115
# Course: Open Source Software | Software Choice: Git

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Iterate over vital system directories and extract permissions and sizes
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Formatting output via awk to meet rubric requirement
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => $PERMS | $SIZE"
    else
        echo "$DIR does not exist on this system."
    fi
done
