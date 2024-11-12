#!/bin/bash
service_name="myapp"
image="myapp:latest"

containers=$(docker ps -q --filter "name=$service_name")

for container in $containers; do
  docker stop "$container"
  docker rm "$container"
  docker run -d --name "$service_name" "$image"
  echo "$service_name updated."
done

