# set base image
FROM jenkins/jenkins:latest-jdk11

# set working directory as app
WORKDIR /app

#set user
USER root

#COPY files
COPY . /app

# Install the requirements
RUN apt-get update && apt-get install -y python3-pip && pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN jenkins-plugin-cli --plugins pipeline-model-definition github-branch-source:1.9

# Command to run when image is executed inside a container
CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
