# =============================================================================>
#                    Script Name   : rename_files.sh                               >
#                    Version       : 1.0                                           >
#                    Author        : Vishal Bobhate                                >
#                    Created on    : 22-Oct-2025                                   >
#                    Purpose       : Rename files with a base name pattern         >
###############################################################################>

#!/bin/bash

read -p "Enter directory path: " DIR
read -p "Enter base name: " BASE


if [ ! -d "$DIR" ]; then
    echo " Error: Directory '$DIR' not found."
fi

COUNT=1

for FILE in "$DIR"/*; do
    [[ -f "$FILE" ]] || continue
    EXT="${FILE##*.}"
    NEW_NAME="$DIR/$BASE$COUNT.$EXT"
    mv "$FILE" "$NEW_NAME"
    echo "Renamed: $FILE -> $NEW_NAME"
    ((COUNT++))
done

echo " All files renamed successfully."
