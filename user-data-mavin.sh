#!/bin/bash
sudo apt update -y
sudo apt install openjdk-11-jdk -y
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
# Install Maven in Jenkins
sudo apt-get install maven -y
## Update packages
sudo apt-get update
## Install Docker
sudo apt-get install docker.io -y
## Add Jenkins user to Docker group
sudo usermod -a -G docker jenkins
