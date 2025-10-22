# =============================================================================>
#                    Script Name   : check_ssh_failures.sh                       >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : Report failed SSH login attempts            >
###############################################################################>

#!/bin/bash

LOG_FILE="/var/log/secure"
OUTPUT_FILE="ssh_failed_data"

if [ ! -f "$LOG_FILE" ]; then
    echo " Error: Log file '$LOG_FILE' not found."
    
fi

grep -i "failed" "$LOG_FILE" > "$OUTPUT_FILE" 2>/dev/null

if [ $? -eq 0 ]; then
    echo " Failed SSH login attempts saved to '$OUTPUT_FILE'."
else
    echo " No failed SSH login attempts found"
fi
