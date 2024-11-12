#!/bin/bash
days=30
docker images --format '{{.Repository}}:{{.Tag}} {{.CreatedAt}} {{.ID}}' | while read image created id; do
  if [[ $(date -d "$created" +%s) -lt $(date -d "$days days ago" +%s) ]]; then
    docker rmi "$id"
  fi
done

