#!/bin/bash
buckets=$(aws s3api list-buckets --query "Buckets[].Name" --output text)

for bucket in $buckets; do
  aws s3api get-bucket-acl --bucket "$bucket" | grep -q "AllUsers"
  if [ $? -eq 0 ]; then
    echo "Warning: $bucket is publicly accessible."
  else
    echo "$bucket is secure."
  fi
done

