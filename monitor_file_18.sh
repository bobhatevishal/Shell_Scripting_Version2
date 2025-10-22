# =============================================================================>
#                    Script Name   : monitor_file.sh                             >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : Monitor a file for changes                  >
###############################################################################>

#!/bin/bash

read -p "Enter the file name to monitor: " FILE

if [ ! -f "$FILE" ]; then
    echo "Error: File '$FILE' does not exist."
fi

echo " Waiting for changes in '$FILE'..."

inotifywait -m -e modify "$FILE" --format '%T %e' --timefmt '%H:%M:%S' |
while read time event; do
    echo " [$time] File modified! Event: $event"
done
