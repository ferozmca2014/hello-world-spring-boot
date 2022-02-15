#!/bin/bash

#pulls the image
docker pull ferozmca2014/springboot:dev-d334120

#stops the container
#docker container stop $(docker container ls | grep 'ferozmca2014/springboot:dev-d334120' | awk '{print $1}')
docker container stop $(docker container ls | cut -d" " -f1  | grep -v \'^C\')

#check the running containers
docker ps

# starts the container
docker run -itd -p 9009:8080 ferozmca2014/springboot:dev-d334120

#Verify that the container started successfully
docker ps


#Verify application is running successfully
wget http://localhost:9009/
