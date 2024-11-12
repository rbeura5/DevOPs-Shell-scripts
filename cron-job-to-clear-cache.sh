#!/bin/bash
cache_dir="/path/to/cache"

# Add to cron to run daily at midnight
echo "0 0 * * * rm -rf $cache_dir/*" | crontab -
echo "Cache cleanup cron job set up."

