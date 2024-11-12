#!/bin/bash
instance_id="i-0123456789abcdef"
start_time="08:00"
stop_time="18:00"
current_time=$(date +%H:%M)

if [ "$current_time" == "$start_time" ]; then
  aws ec2 start-instances --instance-ids "$instance_id"
  echo "Started instance $instance_id."
elif [ "$current_time" == "$stop_time" ]; then
  aws ec2 stop-instances --instance-ids "$instance_id"
  echo "Stopped instance $instance_id."
fi

#Automatically start or stop EC2 instances based on the time of day to save costs.
