#!/bin/bash
echo "Install process start ..."

sudo apt update 

java -version > /dev/null 2>&1
if [ $? -eq 0]; then 
    echo "java is already installed"
else
   sudo apt install -y openjdk-11-jdk
fi


java --version

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

echo "Installed Jenkins.."