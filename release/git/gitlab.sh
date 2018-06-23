sudo apt-get update
sudo apt-get remove -y puppet
wget https://apt.puppetlabs.com/puppet5-release-xenial.deb
sudo dpkg -i puppet5-release-xenial.deb
sudo apt update
sudo apt-get install -y puppet-agent
sudo ln -s /opt/puppetlabs/bin/puppet /usr/bin/puppet
sudo puppet module install puppet-gitlab
echo "include gitlab" > gitlab.pp
sudo puppet apply gitlab.pp