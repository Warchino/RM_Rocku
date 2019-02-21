# Pulling the container of jenkins
docker pull registry.jala.info/devops/jenkins/jenkins:2.150.3-alpine

# Creation of the parent dir for the jenkins data
mkdir -p docker/jenkins_home
chmod 777 docker/jenkins_home

# Command for run the container of jenkins:2.150.3-alpine
docker run -d -p 8080:8080 -p 50000:50000 -v /home/ubuntu/docker/jenkins_home:/var/jenkins_home registry.jala.info/devops/jenkins/jenkins:2.150.3-alpine