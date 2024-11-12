#!/bin/bash
iam_policies=$(aws iam list-policies --query "Policies[?PolicyName=='my-policy'].Arn" --output text)

for policy in $iam_policies; do
  expiry_date=$(aws iam get-policy --policy-arn "$policy" --query "Policy.Metadata.CreationDate" --output text)
  current_date=$(date +%s)
  expiry_timestamp=$(date -d "$expiry_date" +%s)
  remaining_days=$(( (expiry_timestamp - current_date) / 86400 ))

  if [ "$remaining_days" -le 30 ]; then
    echo "IAM Policy $policy will expire in $remaining_days days."
  fi
done

#This script checks for IAM policy expiration and sends an alert if the expiration is near.
