# =============================================================================>
#                    Script Name   : system_report.sh                          >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : Generate a system resource usage report     >
#                                    including CPU, memory, and disk usage.      >
###############################################################################>

#!/bin/bash

echo "CPU Usage:"
CPU=$(top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}')
echo "$CPU"

echo "Memory Usage:"
free -h || echo "Failed to retrieve memory usage"

echo "Disk Usage:"
df -h || echo " Failed to retrieve disk usage"

echo "Report generated on: $(date)"
