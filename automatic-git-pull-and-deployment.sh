#!/bin/bash
repo_dir="/path/to/repository"
deploy_dir="/path/to/deployment"

cd "$repo_dir" || exit
git pull origin main

rsync -av --exclude='.git' "$repo_dir/" "$deploy_dir/"
echo "Deployed latest changes to $deploy_dir."

#Automatically pull the latest changes from a Git repository and deploy it to a server.
