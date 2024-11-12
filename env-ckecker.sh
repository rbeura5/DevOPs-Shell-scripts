#!/bin/bash
required_vars=("DB_USER" "DB_PASSWORD" "DB_HOST")

for var in "${required_vars[@]}"; do
  if [ -z "${!var}" ]; then
    echo "Error: $var is not set."
    exit 1
  fi
done

echo "All required environment variables are set."

