# =============================================================================>
#                    Script Name   : website_monitor.sh                        >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : Monitor a website and report if it is down >
###############################################################################>

#!/bin/bash

read -p "Enter website URL to monitor: " website

if [ "$website" ]; then
    echo " Error: No website provided."
  
fi

status=$(curl -Is "$website" 2>/dev/null | head -n1 | awk '{print $2}')

if [ -z "$status" ]; then
    echo "error: Unable to reach $website"
   
fi

if [ "$status" != "200" ]; then
    echo " $website is DOWN (HTTP $status)"
else
    echo " $website is UP (HTTP $status)"
fi
