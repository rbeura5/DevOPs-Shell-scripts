#!/bin/bash
service="nginx"
log_file="/var/log/service_restart.log"

if ! systemctl is-active --quiet "$service"; then
  echo "$(date): $service is down, restarting." >> "$log_file"
  systemctl restart "$service"
  echo "$(date): $service restarted." >> "$log_file"
else
  echo "$(date): $service is running." >> "$log_file"
fi

#This script ensures that a service like Nginx is always running and logs any restarts.


