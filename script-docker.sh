#!/bin/bash

IMAGE_NAME="julien94800/image-front"

if docker ps -a --format "{{.Names}}" | grep -q "projet-devops1"; then
  docker stop projet-devops1
  docker rm projet-devops1
fi

docker pull $IMAGE_NAME

docker run -d --name projet-devops1 -p 80:80 $IMAGE_NAME
