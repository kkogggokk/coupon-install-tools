#!/bin/sh

# Installation -----------------------------------------
yum update -y
yum install -y git 
yum install -y curl

## docker&docker-compose 
yum install -y docker 
usermod -a -G docker ec2-user 
id ec2-user
newgrp docker
systemctl start docker
systemctl enable docker

## docker-compose 
yum install python3-pip -y
pip3 install docker-compose

# JAVA ENV --------------------------------------------
sudo yum install -y java-17-amazon-corretto-devel


# Version Check ---------------------------------------
git --version 
curl --version 
docker --version 
docker-compose --version
java -version