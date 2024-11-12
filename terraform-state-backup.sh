#!/bin/bash
state_file="terraform.tfstate"
backup_dir="/path/to/backup"
timestamp=$(date +%Y%m%d%H%M)

mkdir -p "$backup_dir"
cp "$state_file" "$backup_dir/terraform_$timestamp.tfstate"
echo "Terraform state backed up at $backup_dir/terraform_$timestamp.tfstate"

