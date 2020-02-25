#! /bin/bash

OWNER=ynahmany
REPOSITORY=brainbackup/platform
IMAGE_NAME=server
VERSION=0.1
VERSION_PATH=../../code-snippet/server
IMAGE_ID=1ea2cfef3de5
DOCKER_PATH=docker.pkg.github.com/$REPOSITORY/$IMAGE_NAME:$VERSION

docker login -u $OWNER -p $TOKEN docker.pkg.github.com

docker tag $IMAGE_ID $DOCKER_PATH

docker build -t $DOCKER_PATH $VERSION_PATH

docker push $DOCKER_PATH
