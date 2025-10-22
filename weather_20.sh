# =============================================================================>
#                    Script Name   : weather.sh                                  >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : Get current weather for a city             >
###############################################################################>

#!/bin/bash

read -p "Enter city name: " CITY

if [ -z "$CITY" ]; then
    echo " Error: No city provided."
fi
curl -s "https://wttr.in/${CITY}?format=3"
