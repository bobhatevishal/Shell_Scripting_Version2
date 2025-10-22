# =============================================================================>
#                    Script Name   : delete_files.sh                            >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : Delete files in a directory matching a      >
#                                    specified pattern.                          >
###############################################################################>

#!/bin/bash
read -p "Enter the directory path: " dir_path
read -p "Enter the file pattern to delete: " file_pattern

if [ ! -d "$dir_path" ]; then
    echo " Error: Directory '$dir_path' does not exist."

fi

if find "$dir_path" -type f -name "$file_pattern" -delete; then
    echo " Files matching '$file_pattern' deleted from '$dir_path'."
else
    echo " Failed to delete files"
fi
