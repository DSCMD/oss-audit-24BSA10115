#!/bin/bash
# Script 1: System Identity Report
# Author: Dakshal Srivastava | Reg No: 24BSA10115
# Course: Open Source Software | Software Choice: Git

DISTRO=$(lsb_release -ds 2>/dev/null || cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f 2)
KERNEL=$(uname -r)
CURRENT_USER=$(whoami)
UPTIME=$(uptime -p)

echo "=========================================="
echo " Open Source Audit — Dakshal Srivastava"
echo "=========================================="
echo "Distro : $DISTRO"
echo "Kernel : $KERNEL"
echo "User   : $CURRENT_USER"
echo "Uptime : $UPTIME"
echo "------------------------------------------"
echo "This system is powered by the Linux Kernel (GPL v2)."
