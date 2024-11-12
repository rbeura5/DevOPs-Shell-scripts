#!/bin/bash
log_group="/my/log/group"
s3_bucket="s3://my-log-backup-bucket"
start_time=$(date -d '7 days ago' +%s000)
end_time=$(date +%s000)

aws logs create-export-task --log-group-name "$log_group" \
  --from "$start_time" --to "$end_time" \
  --destination "$s3_bucket" --destination-prefix "$(date +%Y-%m-%d)"
echo "Log export to $s3_bucket initiated."
#Export logs from AWS CloudWatch to S3 for analysis or archival.
