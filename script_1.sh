#!/bin/bash
# Script 1: System Identity Report
# Author: Pratyush Kumar
# Course: Python
# Concepts used: variables, echo, command substitution, output formatting.

STUDENT_NAME="Pratyush Kumar"
SOFTWARE_CHOICE="Python"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE_TIME=$(date +"%Y-%m-%d %H:%M:%S")

echo "=========================================="
echo "           Open Source Audit              "
echo "=========================================="
echo "Student       : $STUDENT_NAME"
echo "Software      : $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "Kernel        : $KERNEL"
echo "Current User  : $USER_NAME"
echo "System Uptime : $UPTIME"
echo "Current Date  : $DATE_TIME"
echo "License       : This OS is generally covered by the GPL v2 license."
echo "==========================================