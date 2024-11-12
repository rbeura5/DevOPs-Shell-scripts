#!/bin/bash
unused_sgs=$(aws ec2 describe-security-groups --query "SecurityGroups[?length(IpPermissions)==\`0\`].GroupId" --output text)

for sg in $unused_sgs; do
  aws ec2 delete-security-group --group-id "$sg"
  echo "Deleted unused security group $sg"
done

