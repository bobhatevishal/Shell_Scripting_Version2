# =============================================================================>
#                    Script Name   : list_dir_files.sh                         >
#                    Version       : 1.0                                       >
#                    Author        : Vishal Bobhate                            >
#                    Created on    : 22-Oct-2025                               >
#                    Purpose       : List all files in a specified directory    >
#                                    and save the output to a text file.        >
###############################################################################>

#!/bin/bash
read -p "enter the path" path
if [ ! -d "$path" ]; then
    echo " Error: Directory '$path' does not exist."
fi
CMND=$(ls $path >> output.txt)
echo "done"
