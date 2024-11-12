#!/bin/bash
docker container prune -f
docker image prune -f
docker volume prune -f
echo "Docker cleanup complete: stopped containers, dangling images, and unused volumes removed."

