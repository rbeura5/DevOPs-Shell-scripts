#!/bin/bash
repo_dir="/path/to/node/app"
deploy_dir="/var/www/node/app"
cd "$repo_dir" || exit
git pull origin main

npm install
pm2 restart app
echo "Node.js app deployed and restarted."

#This script helps deploy the latest Node.js application changes, ensuring a smooth deployment process.
