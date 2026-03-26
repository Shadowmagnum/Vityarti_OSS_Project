#!/bin/bash

#Script 1: System Identity Report
#Author: Ayush Pratap Singh | Course:Open Source Software

#---Variable---
STUDENT_NAME="Ayush Pratap Singh"
DOFTWARE_CHOICE="Firefox"

# Define colors for visual appeal
BOLD="\e[1m"
GREEN="\e[32m"
CYAN="\e[36m"
BLUE="\e[34m"
RESET="\e[0m"

# Clear the terminal for a clean welcome screen
clear

# Fetch system information safely
if [ -f /etc/os-release ]; then
    source /etc/os-release
    OS_NAME=$PRETTY_NAME
else
    OS_NAME=$(uname -s)
fi

KERNEL_VERSION=$(uname -r)
CURRENT_USER=$USER
HOME_DIR=$HOME
UPTIME=$(uptime -p | sed 's/up //') # Removes the word "up " for cleaner formatting
CURRENT_DATE=$(date +"%A, %B %d, %Y")
CURRENT_TIME=$(date +"%I:%M:%S %p %Z")

# Display the welcome screen
echo -e "${GREEN}${BOLD}==========================================================${RESET}"
echo -e "          ${BOLD}Welcome to the Linux Operating System${RESET}"
echo -e "${GREEN}${BOLD}==========================================================${RESET}"
echo ""

echo -e "${CYAN}${BOLD}▶ System Information${RESET}"
echo -e "  OS Distribution:   ${OS_NAME}"
echo -e "  Kernel Version:    ${KERNEL_VERSION}"
echo ""

echo -e "${CYAN}${BOLD}▶ User Session${RESET}"
echo -e "  Logged-in User:    ${CURRENT_USER}"
echo -e "  Home Directory:    ${HOME_DIR}"
echo ""

echo -e "${CYAN}${BOLD}▶ System Status${RESET}"
echo -e "  System Uptime:     ${UPTIME}"
echo -e "  Current Date:      ${CURRENT_DATE}"
echo -e "  Current Time:      ${CURRENT_TIME}"
echo ""

echo -e "${BLUE}${BOLD}▶ License Information${RESET}"
echo -e "  The Linux kernel and core OS components are distributed"
echo -e "  under the ${BOLD}GNU General Public License (GPL)${RESET}. This system"
echo -e "  is free to use, study, modify, and share."
echo ""

echo -e "${GREEN}${BOLD}==========================================================${RESET}"
echo -e "                ${BOLD}Have a productive day!${RESET}"
echo -e "${GREEN}${BOLD}==========================================================${RESET}"
echo ""
