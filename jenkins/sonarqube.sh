sudo apt -y update
sudo apt install -y unzip

java -v > /dev/null 2>&1

if [ $? -eq 0];then
    echo "Java already installed"

sudo su -
adduser sonarqube

exit

sudo su - sonarqube

wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.5.1.90531.zip

unzip *.zip

chmod -R 755  home/sonarqube/sonarqube* # provide the correct path

chown -R sonarqube:sonarqube home/sonarqube/sonarqube*

cd home/sonarqube/sonarqube*  #provide correct path
./sonar.sh start
