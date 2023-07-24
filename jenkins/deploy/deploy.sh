#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo "!Abcd@123" >> /tmp/.auth

scp -i /home/jenkins/prod /tmp/.auth prod-user@192.168.56.106:/tmp/.auth
scp -i /home/jenkins/prod ./jenkins/deploy/publish.sh prod-user@192.168.56.106:/tmp/publish.sh
ssh -i /home/jenkins/prod prod-user@192.168.56.106 "/tmp/publish.sh"
