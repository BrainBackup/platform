#! /bin/bash

OWNER=ynahmany
REPOSITORY=brainbackup
IMAGE_NAME=server
VERSION=latest
VERSION_PATH=../../code-snippet/server
IMAGE_ID=1ea2cfef3de5
DOCKER_PATH=docker.pkg.github.com/$OWNER/$REPOSITORY/$IMAGE_NAME:$VERSION

docker login -u $OWNER -p $TOKEN docker.pkg.github.com

docker tag $IMAGE_ID $DOCKER_PATH

docker build -t $DOCKER_PATH $VERSION_PATH

docker push $DOCKER_PATH
