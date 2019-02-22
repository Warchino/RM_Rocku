# Pulling the container of jenkins
docker pull registry.jala.info/devops/jenkins/jenkins:2.150.3-alpine

# Creation of the parent dir for the jenkins data
mkdir -p docker/jenkins_home
chmod 777 docker/jenkins_home
