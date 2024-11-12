#!/bin/bash
log_file="/var/log/nginx/access.log"

awk '{print $1}' "$log_file" | sort | uniq -c | sort -nr | head -n 10

