# =============================================================================>
#                    Script Name   : search_replace.sh                             >
#                    Version       : 1.0                                           >
#                    Author        : Vishal Bobhate                                >
#                    Created on    : 22-Oct-2025                                   >
#                    Purpose       : Search and replace text in files              >
###############################################################################>

#!/bin/bash

read -p "Enter directory path: " DIR
read -p "Enter text to search: " SEARCH
read -p "Enter replacement text: " REPLACE

if [ ! -d "$DIR" ]; then
    echo " Error: Directory '$DIR' not found."

fi

for FILE in "$DIR"/*; do
    [[ -f "$FILE" ]] || continue
    sed -i "s/$SEARCH/$REPLACE/g" "$FILE"
    echo " Updated: $FILE"
done

echo "Search and replace completed."
