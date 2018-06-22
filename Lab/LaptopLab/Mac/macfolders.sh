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
