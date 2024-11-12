#!/bin/bash
threshold=80
email="admin@example.com"
disk_usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$disk_usage" -gt "$threshold" ]; then
  echo "Disk usage is above $threshold%, currently $disk_usage%" | mail -s "Disk Usage Alert" "$email"
fi

#This script checks disk usage on the root directory and sends an alert if it exceeds the threshold.


