#!/bin/bash
log_dir="/var/log/myapp"
archive_dir="/var/log/archive"
mkdir -p "$archive_dir"

for log_file in "$log_dir"/*; do
  if [ -f "$log_file" ]; then
    mv "$log_file" "$archive_dir/$(basename "$log_file").$(date +%Y%m%d)"
    gzip "$archive_dir/$(basename "$log_file").$(date +%Y%m%d)"
    echo "$(date): Archived log $log_file."
  fi
done

#This script compresses and archives logs daily, saving disk space.


