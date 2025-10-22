# =============================================================================>
#                    Script Name   : new_user_report.sh                           >
#                    Version       : 1.0                                           >
#                    Author        : Vishal Bobhate                                >
#                    Created on    : 22-Oct-2025                                   >
#                    Purpose       : List users created in last 24 hours          >
###############################################################################>

#!/bin/bash

MY_REPORT=$(find /home -maxdepth 1 -mindepth 1 -type d -mtime -1)

if [ -n "$MY_REPORT" ]; then
    echo -e " New users created in last 24 hours:\n$MY_REPORT"
else
    echo "ℹ️No new users created in the past 24 hours."
fi
