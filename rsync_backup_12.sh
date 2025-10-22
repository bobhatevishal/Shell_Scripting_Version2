# =============================================================================>
#                    Script Name   : rsync_backup.sh                             >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : Sync a local directory to a remote server   >
###############################################################################>

#!/bin/bash

read -p "Enter the local directory: " LOCAL_DIR
read -p "Enter the remote user: " REMOTE_USER
read -p "Enter the remote host/IP: " REMOTE_HOST
read -p "Enter the remote directory: " REMOTE_DIR

if [ ! -d "$LOCAL_DIR" ]; then
    echo " Error: Local directory '$LOCAL_DIR' does not exist."
  
fi

if rsync -avzh --delete "$LOCAL_DIR/" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"; then
    echo " Backup of '$LOCAL_DIR' to '$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR' completed."
else
    echo " Backup failed!"
    
fi
