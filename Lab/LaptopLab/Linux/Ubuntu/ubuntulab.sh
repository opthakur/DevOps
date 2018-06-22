sudo su -
cd ~
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y virtualbox
#wget http://download.virtualbox.org/virtualbox/5.1.30/virtualbox-5.1_5.1.30-118389~Ubuntu~xenial_amd64.deb
sudo apt-get install -y vagrant
wget https://releases.hashicorp.com/vagrant/2.0.0/vagrant_2.0.0_x86_64.deb
sudo dpkg -i vagrant*.deb
mkdir -p ~/devops/provision/vagrant/centos7
mkdir -p ~/devops/provision/vagrant/ubuntuxenial
mkdir -p ~/devops/provision/docker
mkdir -p ~/devops/provision/kubernetes
mkdir -p ~/devops/release/git
mkdir -p ~/devops/release/gitlab
mkdir -p ~/devops/release/jenkins
mkdir -p ~/devops/release/tomcat
mkdir -p ~/devops/release/nagios
mkdir -p ~/devops/coding/puppet/puppetserver
mkdir -p ~/devops/coding/puppet/puppetnode
mkdir -p ~/devops/coding/chef/chefserver
mkdir -p ~/devops/coding/chef/chefworkstation
mkdir -p ~/devops/coding/chef/chefnode
mkdir -p ~/devops/coding/ansible
cd ~/devops/provision/vagrant/centos7
vagrant init centos/7
vagrant up && vagrant halt
cd ~/devops/provision/vagrant/ubuntuxenial
vagrant init ubuntu/xenial64
vagrant up && vagrant halt
cd ~/devops
tree
