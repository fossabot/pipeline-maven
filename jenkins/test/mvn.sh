#!/bin/bash

echo "****************************"
echo "** Testing the code ***"
echo "****************************"

docker run --rm -it -v $PWD/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.8.6-eclipse-temurin-17-alpine "$@"
