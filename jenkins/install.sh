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

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key |sudo gpg --dearmor -o /usr/share/keyrings/jenkins.gpg
sudo sh -c 'echo deb [signed-by=/usr/share/keyrings/jenkins.gpg] http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt install jenkins