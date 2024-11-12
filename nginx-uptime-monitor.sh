#!/bin/bash
service_name="nginx"
log_file="/var/log/service_uptime.log"

if systemctl is-active --quiet "$service_name"; then
  echo "$(date): $service_name is running" >> "$log_file"
else
  echo "$(date): $service_name is down" >> "$log_file"
  echo "$service_name is down!" | mail -s "$service_name down alert" admin@example.com
fi

