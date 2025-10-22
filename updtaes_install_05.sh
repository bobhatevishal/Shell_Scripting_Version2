# =============================================================================>
#                    Script Name   : software_update.sh                        >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : Check for software updates and install     >
#                                    them automatically using yum.              >
###############################################################################>

#!/bin/bash

read -p "Enter the software name to update :  " software

if yum update "$software" -y; then
    echo " '$software' updated successfully."
else
    echo " Failed to update '$software' "
   
fi
