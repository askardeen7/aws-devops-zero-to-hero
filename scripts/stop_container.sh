#!/bin/bash
set -e

# Get the first running container ID
containerid=$(docker ps -q | head -n 1)

if [ -n "$containerid" ]; then
  echo "Stopping container $containerid..."
  docker stop "$containerid"
  echo "Removing container $containerid..."
  docker rm "$containerid"
else
  echo "No running containers found."
fi
