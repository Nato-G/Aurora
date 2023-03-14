# set base image
FROM jenkins/jenkins:latest-jdk11

# set working directory as app
WORKDIR /app

# set user
USER root

# Copy files
COPY . /app

# Install the requirements
RUN apt-get update && apt-get install -y python3-pip && pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

