#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Dakshal Srivastava | Reg No: 24BSA10115
# Course: Open Source Software | Software Choice: Git

PACKAGE="git"

# Check installation status silently across common package managers
if dpkg -l "$PACKAGE" &>/dev/null || rpm -q "$PACKAGE" &>/dev/null; then
    echo "[+] $PACKAGE is installed on this system."
else
    echo "[-] $PACKAGE is NOT installed."
fi

echo ""
echo "--- Philosophy Note ---"

# Output a specific open-source philosophy note based on the package name
case "$PACKAGE" in
    httpd)
        echo "Apache: The web server that essentially built the open internet."
        ;;
    mysql)
        echo "MySQL: The open-source database at the heart of millions of web applications."
        ;;
    vlc)
        echo "VLC: A multimedia powerhouse showing how student initiatives can change the world."
        ;;
    git)
        echo "Git: Linus Torvalds' tool that decentralized code collaboration and broke proprietary locks."
        ;;
    *)
        echo "$PACKAGE is a crucial gear in the vast open-source ecosystem."
        ;;
esac
