#!/bin/bash
days_threshold=90
current_date=$(date +%s)

aws iam list-users --query 'Users[].UserName' --output text | while read -r user; do
  aws iam list-access-keys --user-name "$user" --query 'AccessKeyMetadata[].CreateDate' --output text | while read -r create_date; do
    key_date=$(date -d "$create_date" +%s)
    key_age=$(( (current_date - key_date) / 86400 ))

    if [ "$key_age" -ge "$days_threshold" ]; then
      echo "User $user has an access key older than $days_threshold days."
    fi
  done
done

