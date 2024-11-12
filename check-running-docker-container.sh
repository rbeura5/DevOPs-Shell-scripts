#!/bin/bash
containers=$(docker ps -q)

if [ -z "$containers" ]; then
  echo "No running containers found. Restarting necessary containers."
  docker restart $(docker ps -a -q)
else
  echo "Containers running: $containers"
fi

#Check if Docker containers are running, and restart them if necessary.


