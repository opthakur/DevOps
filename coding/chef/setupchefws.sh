wget https://packages.chef.io/files/stable/chefdk/3.1.0/ubuntu/16.04/chefdk_3.1.0-1_amd64.deb
dpkg -i chefdk*.deb
cd /etc
mv hosts hosts.bak
wget https://gitlab.com/roybhaskar9/devops/raw/master/coding/chef/hosts
cd ~
cp /vagrant/chef-starter.zip .
apt install -y unzip
unzip chef-starter.zip
cd chef-repo
knife ssl fetch
knife client list