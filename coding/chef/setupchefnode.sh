cd /etc
mv hosts hosts.bak
wget https://gitlab.com/roybhaskar9/devops/raw/master/coding/chef/hosts
cd ~
sudo sed -i '28s/prohibit-password/yes/' /etc/ssh/sshd_config
sudo sed -i '52s/no/yes/' /etc/ssh/sshd_config
sudo service ssh restart