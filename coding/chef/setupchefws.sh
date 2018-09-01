wget https://packages.chef.io/files/stable/chefdk/3.1.0/ubuntu/16.04/chefdk_3.1.0-1_amd64.deb
dpkg -i chefdk*.deb
cd /etc
mv hosts hosts.bak
https://gitlab.com/roybhaskar9/devops/raw/master/coding/chef/hosts