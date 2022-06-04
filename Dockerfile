FROM ubuntu:20.04

MAINTAINER <christoph.hahn@uni-graz.at>

WORKDIR /usr/src

RUN apt update && apt install -y build-essential curl zip && \
	curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
	unzip awscliv2.zip && \
	aws/install  
