# =============================================================================>
#                    Script Name   : ec2_json.sh                           >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : Parse EC2 JSON file and display instance     >
#                                    ID, Private IP, and Public IP.              >
###############################################################################>

#!/bin/bash
read -p "Enter the JSON file name: " JSON_FILE

if [ ! -f "$JSON_FILE" ]; then
    echo "Error: File '$JSON_FILE' does not exist."
fi

jq -r '.Reservations[].Instances[] | "Instance ID: \(.InstanceId), Private IP: \(.PrivateIpAddress), Public IP: \(.PublicIpAddress)"' "$JSON_FILE" || \
echo " Failed to parse JSON. Check file format."
