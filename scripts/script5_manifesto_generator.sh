#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Dakshal Srivastava | Reg No: 24BSA10115
# Course: Open Source Software | Software Choice: Git

echo "Create Your Open Source Manifesto"
echo "---------------------------------"

# Prompt user for distinct views
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. What does true 'freedom' mean to you in one word? " FREEDOM
read -p "3. Name one thing you'd love to build and share freely: " BUILD

# Construct the manifesto paragraph 
MANIFESTO="As a believer in the Open Source movement, my daily reliance on $TOOL proves that open collaboration works. To me, software freedom represents $FREEDOM. In the future, I plan to build a $BUILD and release it under a fully open license for the global community to improve upon."

OUTPUT_FILE="manifesto_dakshal.txt"

# Write the manifesto to the dedicated text file
echo "$MANIFESTO" > "$OUTPUT_FILE"

echo ""
echo "[+] Successfully saved to $OUTPUT_FILE"
echo "---------------------------------"
cat "$OUTPUT_FILE"
echo "---------------------------------"
