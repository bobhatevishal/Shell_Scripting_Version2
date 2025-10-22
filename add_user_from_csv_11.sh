# =============================================================================>
#                    Script Name   : add_users_from_csv.sh                      >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : Add new users from a CSV file (username,id) >
###############################################################################>

#!/bin/bash
read -p "Enter the CSV file path: " file
if [ ! -f "$file" ]; then
    echo " Error: File '$file' does not exist."

fi

while IFS=',' read -r username id; do
    if [ -n "$username" ]; then
        useradd "$username" && echo " User '$username' added." || echo " Failed to add '$username'."
    fi
done < "$file"
