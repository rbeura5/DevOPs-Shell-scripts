#!/bin/bash
threshold=80
email="admin@example.com"
directories=("/" "/var" "/home")

for dir in "${directories[@]}"; do
  usage=$(df "$dir" | grep -Po '\d+(?=%)')
  if [ "$usage" -gt "$threshold" ]; then
    echo "Disk usage of $dir is at $usage%" | mail -s "Disk Usage Alert: $dir" "$email"
  fi
done


