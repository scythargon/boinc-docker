#!/usr/bin/env bash
set -e

IMAGE_NAME=boinc
REPO_NAME=scythargon

docker buildx build --platform linux/amd64 -t $IMAGE_NAME .
docker tag $IMAGE_NAME $REPO_NAME/$IMAGE_NAME:latest
docker push $REPO_NAME/$IMAGE_NAME:latest
