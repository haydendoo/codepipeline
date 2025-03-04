#!/bin/bash
echo Logging into ECR...
aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 314146331900.dkr.ecr.ap-southeast-1.amazonaws.com

echo Pulling docker image...
docker pull 314146331900.dkr.ecr.ap-southeast-1.amazonaws.com/sigma:latest

echo Running docker
docker run --name sigma-container -d -p 80:80 314146331900.dkr.ecr.ap-southeast-1.amazonaws.com/sigma:latest

echo Successfully ran new container
