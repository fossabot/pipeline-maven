#!/bin/bash

echo "****************************"
echo "** Building jar ***"
echo "****************************"

WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -it -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.8.6-eclipse-temurin-17-alpine "$@"
