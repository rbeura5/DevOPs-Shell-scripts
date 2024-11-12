#!/bin/bash
volume_id="vol-xxxxxxxxxxxxxxx"
snapshot_name="snapshot-$(date +%Y%m%d%H%M%S)"
aws ec2 create-snapshot --volume-id "$volume_id" --description "$snapshot_name"
echo "Created snapshot $snapshot_name for volume $volume_id."

#This script helps back up your EC2 volumes by creating snapshots for disaster recovery.
