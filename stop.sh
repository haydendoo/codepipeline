#!/bin/bash
echo Stopping all containers
docker stop $(docker ps -a -q)
