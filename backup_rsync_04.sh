# =============================================================================>
#                    Script Name   : backup_rsync.sh                            >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : Backup a specified directory to a remote    >
#                                    server using rsync over SSH.               >
###############################################################################>

#!/bin/bash
read -p "Enter the directory to back up: " SOURCE_DIR
read -p "Enter the remote user: " REMOTE_USER
read -p "Enter the remote server IP or hostname: " REMOTE_HOST
read -p "Enter the remote directory to back up to: " REMOTE_DIR


if [ ! -d "$SOURCE_DIR" ]; then
    echo " Error: Source directory '$SOURCE_DIR' does not exist."
   
fi

rsync -avz -e ssh "$SOURCE_DIR" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"


if [ $? -eq 0 ]; then
    echo " Backup of '$SOURCE_DIR' to '$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR' completed successfully."
    echo "$(date): Backup of $SOURCE_DIR to $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR completed." >> backup.log
else
    echo " Backup failed! Please check the directory paths"
   
fi
