#!/bin/bash
# Script 4: Log File Analyzer

# 1. Ensure the user provides exactly two arguments: the file and the keyword
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <path_to_log_file> <keyword>"
    echo "Example: $0 /var/log/syslog ERROR"
    exit 1
fi

LOG_FILE=$1
KEYWORD=$2

# 2. Check if the provided file actually exists and is a regular file
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: Log file '$LOG_FILE' does not exist."
    exit 1
fi

# 3. Initialize the counter
MATCH_COUNT=0
TOTAL_LINES=0

echo "Scanning '$LOG_FILE' for '$KEYWORD'..."

# 4. Read the file line by line
# IFS= prevents leading/trailing whitespace from being trimmed
# -r prevents backslashes from being interpreted as escape characters
while IFS= read -r line; do
    ((TOTAL_LINES++))
    
    # 5. Check if the line contains the keyword
    if [[ "$line" == *"$KEYWORD"* ]]; then
        ((MATCH_COUNT++))
    fi
done < "$LOG_FILE"

# 6. Print the summary
echo ""
echo "=================================================="
echo "               Log Analysis Summary               "
echo "=================================================="
echo "  File Analyzed:    $LOG_FILE"
echo "  Total Lines:      $TOTAL_LINES"
echo "  Keyword Searched: $KEYWORD"
echo "  Matches Found:    $MATCH_COUNT"
echo "=================================================="
