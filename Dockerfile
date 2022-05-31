FROM ubuntu:18.04

# basic
RUN apt update && apt upgrade -y
RUN apt install -y vim ufw curl git libffi-dev libssl-dev python3-dev python3 python3-pip apt-transport-https ca-certificates curl gnupg2 software-properties-common build-essential libcurl4-openssl-dev libxkbfile-dev net-tools

# enable NodeSource
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -

# install node
RUN apt install -y nodejs 

# install node libs
RUN mkdir /usr/src/data
RUN cd /usr/src/data 
RUN npm init -y
RUN npm install -g json-server
RUN touch /usr/src/data/.env
RUN echo "PORT 80" >> /usr/src/data/.env
