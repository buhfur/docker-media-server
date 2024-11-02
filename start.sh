#!/bin/bash
#
#Starts docker-media-server containers

# Get absolute path of parent directory

# Prune any containers from last run 
docker container prune -f

# Start services
docker compose -f /root/docker-media-server/compose.yml up 
