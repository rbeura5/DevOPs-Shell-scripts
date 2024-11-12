#!/bin/bash
jobs=$(ps aux | grep '[p]ython' | awk '{ print $2 }')

if [ -z "$jobs" ]; then
  echo "No unwanted background jobs running."
else
  echo "Found running background jobs: $jobs"
  kill $jobs
fi

#This script checks for unwanted running background processes (e.g., Python scripts) and kills them.
