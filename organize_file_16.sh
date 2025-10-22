# =============================================================================>
#                    Script Name   : organize_files.sh                           >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : Organize files by type in a directory       >
###############################################################################>

#!/bin/bash

read -p "Enter directory to organize: " DIR

if [ ! -d "$DIR" ]; then
    echo " Error: Directory '$DIR' does not exist."
    
cd "$DIR" || exit

mkdir -p images documents audio other
for FILE in *; do
    [[ -f "$FILE" ]] || continue
    case "${FILE,,}" in
        *.jpg|*.png|*.gif) mv "$FILE" images/ ;;
        *.pdf|*.txt|*.docx) mv "$FILE" documents/ ;;
        *.mp3|*.wav) mv "$FILE" audio/ ;;
        *) mv "$FILE" others/ ;;
    esac
done

echo " Files organized successfully."
