# Installing java 8
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
java -version

# Installing repositories of jenkins
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update

# Intalling the specfied version of jenkins
sudo apt-get install jenkins=2.150.3 -y