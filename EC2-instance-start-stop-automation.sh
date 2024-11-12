#!/bin/bash
action=$1 # start or stop
tag="Environment=staging"

aws ec2 describe-instances --filters "Name=tag:$tag" "Name=instance-state-name,Values=running,stopped" \
--query "Reservations[*].Instances[*].InstanceId" --output text | while read instance_id; do
  aws ec2 "$action"-instances --instance-ids "$instance_id"
  echo "Instance $instance_id $action-ed."
done

