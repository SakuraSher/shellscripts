#!/bin/bash
echo "Install process start ..."

java -version > /dev/null 2>&1
if [ $? -eq 0]; then 
    echo "java is already installed"
else
   sudo apt install -y openjdk-11-jdk
fi

java --version
