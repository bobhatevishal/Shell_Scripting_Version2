#!/bin/bash
# =============================================================================>
#                  Script Name : task3_service.sh                              >
#                  Version     : 1.0                                           >
#                  Author      : Vishal Bobhate                                >
#                  Created on  : 15-Oct-2025                                   >
#                 Purpose  : This script checks whether a given service is     >
#                             running. If not, it restarts the service.        >
#                                                                              >
###############################################################################>

read -p "Enter the service name:--" service_name
service $service_name status  > /dev/null 2>&1

if [ $? != 0 ]; then
     echo "$service_name is not runing "
service $service_name restart
else
    echo "$service_name is runing"
fi
