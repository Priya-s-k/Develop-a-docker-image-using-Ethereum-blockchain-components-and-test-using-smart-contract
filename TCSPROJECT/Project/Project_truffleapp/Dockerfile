
FROM node:latest

# Create code directory
RUN mkdir /source

# Set working directory
WORKDIR /source
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-get update -y  && \
    apt-get install -y git  && \
    apt-get install -y vim
RUN apt-get update && \
    apt-get install -y curl \
    wget \
    openjdk-11-jdk
RUN apt-get install -y default-jre
RUN apt-get update && apt-get -y upgrade
# Install Truffle
RUN npm install -g truffle && npm config set bin-links false
RUN npm install -g --save ethereumjs-testrpc

RUN  apt-get update

