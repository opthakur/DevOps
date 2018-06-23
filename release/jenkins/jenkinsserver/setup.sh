echo 'Acquire::ForceIPv4 "true";' | sudo tee /etc/apt/apt.conf.d/99force-ipv4
sudo apt-get update
sudo apt-get install -y puppet git
sudo puppet module install rtyler-jenkins
sudo puppet module install hubspot-nexus
sudo puppet module install maestrodev-sonarqube
wget https://raw.githubusercontent.com/roybhaskar9/jenkins/master/jenkins.pp
wget https://raw.githubusercontent.com/roybhaskar9/jenkins/master/nexus.pp
wget https://raw.githubusercontent.com/roybhaskar9/jenkins/master/sonar.pp
sudo puppet apply jenkins.pp
sudo apt-get install -y maven
sudo puppet apply nexus.pp
sudo puppet apply sonar.pp
sudo echo "sonar.embeddedDatabase.port:               9092" >> /usr/local/sonar/conf/sonar.properties
sudo /etc/init.d/sonar start
sudo rm -f /etc/maven/settings.xml
sudo wget https://raw.githubusercontent.com/roybhaskar9/samplejava/master/settings.xml -O /etc/maven/settings.xml
