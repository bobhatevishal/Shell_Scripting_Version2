# =============================================================================>
#                    Script Name   : compare_dirs.sh                            >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : Compare two directories and report differences>
###############################################################################>

#!/bin/bash

read -p "Enter the 1st directory: " DIR1
read -p "Enter the 2nd directory: " DIR2

if [ ! -d "$DIR1" ] || [ ! -d "$DIR2" ]; then
    echo " Error: One or both directories do not exist."
    exit 1
fi

if diff -qr "$DIR1" "$DIR2" > /dev/null; then
    echo "No differences found."
else
    echo "Differences exist between the directories:"
    diff -qr "$DIR1" "$DIR2"
fi
