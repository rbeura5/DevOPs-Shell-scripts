#!/bin/bash
source_dir="/path/to/backup"
s3_bucket="s3://mybucket/backup"
aws s3 sync "$source_dir" "$s3_bucket"
echo "Backup completed to $s3_bucket"

