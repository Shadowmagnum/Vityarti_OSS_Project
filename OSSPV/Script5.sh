#!/bin/bash
# Script 5: Open Source Manifesto Generator

# Define colors for a creative, vibrant terminal experience
BOLD="\e[1m"
CYAN="\e[36m"
MAGENTA="\e[35m"
YELLOW="\e[33m"
GREEN="\e[32m"
RESET="\e[0m"

clear

echo -e "${MAGENTA}${BOLD}✨=======================================================✨${RESET}"
echo -e "       ${BOLD}The Open Source Philosophy Statement Generator${RESET}"
echo -e "${MAGENTA}${BOLD}✨=======================================================✨${RESET}"
echo ""
echo -e "${CYAN}Let's craft your personal open-source manifesto.${RESET}"
echo -e "Answer these three questions from the heart:"
echo ""

# Question 1
echo -e "${YELLOW}1. If your code was a gift to the world, what is the main problem it solves or value it brings?${RESET}"
read -p "> " Q1_VALUE
echo ""

# Question 2
echo -e "${YELLOW}2. Describe your ideal collaborative developer community in just three words (e.g., curious, supportive, chaotic-good):${RESET}"
read -p "> " Q2_COMMUNITY
echo ""

# Question 3
echo -e "${YELLOW}3. When a stranger forks your repository, how do you want them to feel?${RESET}"
read -p "> " Q3_FEELING
echo ""

# Compose the philosophy statement
DATE_TODAY=$(date +"%B %d, %Y")
FILENAME="my_opensource_philosophy.txt"

# Creating the paragraph
PARAGRAPH="My Open Source Philosophy\nGenerated on: $DATE_TODAY\n\nI believe that software is more than just instructions for a machine; it is a shared medium to bring $Q1_VALUE to the world. To me, the strength of the open-source ecosystem relies on it being $Q2_COMMUNITY. By building in public and sharing knowledge freely, my ultimate goal is to create an environment where anyone who encounters, uses, or forks my work feels $Q3_FEELING. This is my commitment to a transparent, accessible, and collaborative digital future."

# Save to file
echo -e "$PARAGRAPH" > "$FILENAME"

# Success message and output display
echo -e "${GREEN}${BOLD}==========================================================${RESET}"
echo -e " 🎉 Manifesto successfully generated and saved to: ${BOLD}$FILENAME${RESET}"
echo -e "${GREEN}${BOLD}==========================================================${RESET}"
echo ""
echo -e "${CYAN}Here is what we wrote together:${RESET}"
echo ""
echo -e "  \"I believe that software is more than just instructions"
echo -e "  for a machine; it is a shared medium to bring ${BOLD}$Q1_VALUE${RESET}"
echo -e "  to the world. To me, the strength of the open-source ecosystem"
echo -e "  relies on it being ${BOLD}$Q2_COMMUNITY${RESET}. By building in public and"
echo -e "  sharing knowledge freely, my ultimate goal is to create an"
echo -e "  environment where anyone who encounters, uses, or forks my work"
echo -e "  feels ${BOLD}$Q3_FEELING${RESET}. This is my commitment to a transparent,"
echo -e "  accessible, and collaborative digital future.\""
echo ""
echo -e "${MAGENTA}Keep building beautiful things!${RESET}"
echo ""
