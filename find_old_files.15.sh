# =============================================================================>
#                    Script Name   : find_old_files.sh                           >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : List files not accessed in X days          >
###############################################################################>

#!/bin/bash

read -p "Enter directory: " dir
read -p "Enter number of days: " days

if [ ! -d "$dir" ]; then
    echo " Error: Directory '$dir' does not exist."

fi

echo "Files in '$dir' not accessed in last $days days:"
find "$dir" -type f -atime +"$days"
