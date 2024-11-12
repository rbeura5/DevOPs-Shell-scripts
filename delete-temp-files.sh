#!/bin/bash
temp_dir="/tmp"
days=7

find "$temp_dir" -type f -mtime +$days -exec rm -f {} \;
echo "Deleted temporary files older than $days days."

#This script cleans up old temporary files, which is useful for keeping the system lean and free of unnecessary files.
