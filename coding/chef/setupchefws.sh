echo "First, we will replace hosts file"
echo "Moving inside /etc"
cd /etc
echo "Existing content of /etc/hosts"
cat /etc/hosts
echo "Taking backup of existing /etc/hosts file"
mv hosts hosts.bak
echo "Here is the backup file"
ls -l /etc/hosts.bak
echo "Now downloading replacement hosts file"
wget https://gitlab.com/roybhaskar9/devops/raw/master/coding/chef/hosts
echo "Replaced hosts file and here is the new content"
ls -l /etc/hosts
cat /etc/hosts
echo "Now going back to home directory"
cd ~
echo "Downloading Chef Development Kit Debian Package file for Ubuntu"
wget https://packages.chef.io/files/stable/chefdk/3.1.0/ubuntu/16.04/chefdk_3.1.0-1_amd64.deb
echo "Now installing ChefDK using dpkg"
dpkg -i chefdk*.deb
echo "For the rest to work we are expecting the chef-starter.zip file to be avaialble on /vagrant path"
file="/vagrant/chef-starter.zip"
echo "Lets see if it is there"
ls -l /vagrant
if [ -f "$file" ];
then
    echo "File $FILE exists."
    echo "Lets copy the file to home directory"
    cp /vagrant/chef-starter.zip ~
    echo "Lets install unzip"
    apt install -y unzip
    echo "Lets make sure that we are in the home directory"
    cd ~
    echo "Lets Unzip the file"
    unzip chef-starter.zip
    echo "Lets see how it looks like after extraction"
    ls -l
    echo "Lets move inside extracted directory called chef-repo"
    cd chef-repo
    echo "Setting up SSL connection trust with server"
    knife ssl fetch
    echo "Lets see if we can get back a response from server"
    knife client list
    echo "If you get to see a response as chef-validator then your workstation setup is now complete"
else
    echo "File $FILE does not exist"
    echo "Download chef starter kit after logging in to the chef server and move it in the same folder where you have kept the Vagrantfile"
fi
