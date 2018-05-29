FROM maven:3.3.9-jdk-8-alpine

MAINTAINER Saurabh Oza "saurabh.devops@gmail.com"

WORKDIR /home/maven

RUN apk add --no-cache docker openssh-client openssl py-pip &&\
    pip install --upgrade pip &&\
    pip install docker-compose &&\
    pip install awscli --upgrade --user &&\
    pip install boto3
