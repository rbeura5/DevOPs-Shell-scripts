#!/bin/bash
threshold=80
log_file="/var/log/system_load.log"

load=$(uptime | awk '{ print $10 }' | sed 's/,//')
if (( $(echo "$load > $threshold" | bc -l) )); then
  echo "$(date): System load is high: $load" >> "$log_file"
  echo "System load is high, check the logs."
fi

#This script monitors system load and logs any instance where the load exceeds the threshold
