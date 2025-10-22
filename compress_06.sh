# =============================================================================>
#                    Script Name   : compress_old_logs.sh                       >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : Compress and archive log files older than   >
#                                    a specified number of days.                 >
###############################################################################>

#!/bin/bash

DAYS=7
LOG_DIR="/var/log"


if [ ! -d "$LOG_DIR" ]; then
    echo " Error: Log directory '$LOG_DIR' does not exist."
   
fi

if find "$LOG_DIR" -type f -name "*.log" -mtime +"$DAYS" -exec gzip {} \;; then
    echo " Log files older than $DAYS days have been compressed."
else
    echo " Failed to compress '$LOG_DIR' "
fi
