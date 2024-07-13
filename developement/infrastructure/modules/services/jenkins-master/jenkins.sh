#!/bin/bash

# Update the package index
sudo apt-get update -y
sudo apt-get upgrade -y

# Install Java OpenJDK 11
sudo apt-get install -y openjdk-17-jdk

# Import the Jenkins GPG key
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
/usr/share/keyrings/jenkins-keyring.asc > /dev/null

# Add the Jenkins repository to the apt sources list
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null

# Update the apt package index
sudo apt-get update

# Install Jenkins
sudo apt-get install -y jenkins

# Start the Jenkins service
sudo systemctl start jenkins

# Enable the Jenkins service to start at boot time
sudo systemctl enable jenkins