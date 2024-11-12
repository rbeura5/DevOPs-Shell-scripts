#!/bin/bash
local_dir="/path/to/local/dir"
s3_bucket="s3://my-backup-bucket"
aws s3 sync "$local_dir" "$s3_bucket"
echo "Synced local directory to S3 bucket."

#Synchronize files from a local directory to an AWS S3 bucket for backup.
