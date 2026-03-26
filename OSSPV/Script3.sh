#!/bin/bash
#Script 3: Disk and Permission Auditor

# Define an array of important system directories
DIRECTORIES=("/etc" "/var" "/usr" "/boot" "/tmp" "/opt")

echo "=================================================="
echo "          System Directory Status Report"
echo "=================================================="
echo ""

# Loop through each directory in the array
for DIR in "${DIRECTORIES[@]}"; do
    
    # Check if the directory actually exists on this system
    if [ -d "$DIR" ]; then
        
        # Calculate size. 
        # 2>/dev/null hides permission errors for unreadable subdirectories.
        # cut -f1 extracts just the size value from the du output.
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        # Fallback if size is empty (e.g., completely unreadable without sudo)
        if [ -z "$SIZE" ]; then
            SIZE="Unknown (Requires Sudo)"
        fi

        # Get owner and permissions using 'stat'
        # %U = Owner User, %G = Owner Group, %A = Human-readable permissions
        OWNER=$(stat -c "%U:%G" "$DIR")
        PERMS=$(stat -c "%A" "$DIR")
        
        # Print the results
        echo -e "** Directory:   $DIR"
        echo -e "   Size:        $SIZE"
        echo -e "   Owner:       $OWNER"
        echo -e "   Permissions: $PERMS"
        echo "--------------------------------------------------"
        
    else
        echo "** Directory:   $DIR"
        echo "   Status:      Does not exist on this system."
        echo "--------------------------------------------------"
    fi

done

echo "Report Complete."
