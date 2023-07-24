#!/bin/bash

echo "*******************"
echo "** Pushing Image **"
echo "*******************"

IMAGE="maven-project"

echo "** Loggin in **"
docker login -u bideb -p $PASS
echo "** Tagging Image **"
docker tag $IMAGE:$BUILD_TAG bideb/$IMAGE:$BUILD_TAG
echo "** Pushing Image **"
docker push bideb/$IMAGE:$BUILD_TAG
