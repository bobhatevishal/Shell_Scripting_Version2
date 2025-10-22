# =============================================================================>
#                    Script Name   : task2df_u.sh                              >
#                    Version       : 1.0                                       >
#                    Author        : Vishal Bobhate                            >
#                    Created on    : 15-Oct-2025                               >
#                    Purpose       : Monitor disk usage and send email alerts  >
#                                    if disk usage exceeds a defined threshold.>
###############################################################################>
HRESHOLD=10  # threshod set for triggering the mail
USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -ge  "$HRESHOLD" ]; then
      echo " disk usage is  more to normal  ${$USAGE}% on $(hostname)"| mail -s>

else
      echo "usage is normal"

fi
