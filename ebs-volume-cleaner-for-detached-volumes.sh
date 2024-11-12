#!/bin/bash
volumes=$(aws ec2 describe-volumes --filters Name=status,Values=available --query "Volumes[*].VolumeId" --output text)

for volume in $volumes; do
  aws ec2 delete-volume --volume-id "$volume"
  echo "Deleted unattached volume: $volume"
done

