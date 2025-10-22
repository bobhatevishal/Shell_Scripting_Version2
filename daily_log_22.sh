# =============================================================================>
#                    Script Name   : daily_log_email.sh                           >
#                    Version       : 1.0                                         >
#                    Author        : Vishal Bobhate                              >
#                    Created on    : 22-Oct-2025                                 >
#                    Purpose       : Send daily system log summary via email      >
###############################################################################>

#!/bin/bash

EMAIL="heyuser@gmail.com"
SUBJECT="Daily System Log Summary - $(date '+%Y-%m-%d')"
LOG_FILE="/var/log/messages"

if [ ! -f "$LOG_FILE" ]; then
    echo " Error: Log file '$LOG_FILE' not found."
fi

tail -n 10 "$LOG_FILE" | mail -s "$SUBJECT" "$EMAIL"

if [ $? -eq 0 ]; then
    echo " Daily log summary sent to $EMAIL."
else
    echo " Failed to send email."
fi
