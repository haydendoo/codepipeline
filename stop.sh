#!/bin/bash
echo Stopping and removing all containers
docker ps -aq | xargs -r docker rm -f
