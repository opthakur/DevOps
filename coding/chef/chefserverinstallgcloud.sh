echo "First, we will replace hosts file"
echo "Moving inside /etc"
cd /etc
echo "Existing content of /etc/hosts"
cat /etc/hosts
#echo "Taking backup of existing /etc/hosts file"
#mv hosts hosts.bak
#echo "Here is the backup file"
#ls -l /etc/hosts.bak
#echo "Now downloading replacement hosts file"
#wget https://gitlab.com/roybhaskar9/devops/raw/master/coding/chef/hosts
#echo "Replaced hosts file and here is the new content"
ls -l /etc/hosts
cat /etc/hosts
echo "Now going back to home directory"
cd ~
echo "Downloading chef server software package for ubuntu"
wget https://packages.chef.io/files/stable/chef-server/12.17.33/ubuntu/16.04/chef-server-core_12.17.33-1_amd64.deb
echo "Download complete and now installing chef server using debian package manager of ubuntu - dpkg"
dpkg -i chef-server*.deb
echo "Server Installation is Complete and Now Starting Server Configuration"
chef-server-ctl reconfigure
echo "Server Configuration is Complete and Now Creating First User"
chef-server-ctl user-create chefuser Chef User chefuser@chef.io 'chefuser123' --filename ~/chefuser.pem
echo "User is Created"
echo "Now downloading GUI Package for Chef Server. It is not Opensource but free trial is available"
wget https://packages.chef.io/files/stable/chef-manage/2.5.16/ubuntu/16.04/chef-manage_2.5.16-1_amd64.deb
echo "Installing GUI Package"
dpkg -i chef-manage*.deb
# chef-server-ctl install chef-manage
echo "GUI Package Installation is Complete, Now starting to reconfigure chef server and configure the GUI while auto accepting the license"
chef-server-ctl reconfigure
chef-manage-ctl reconfigure --accept-license
echo "Chef Server installation is complete. Now go to https://192.168.33.10 and login with username: chefuser and password: chefuser123"
echo "Download and move the starter kit zip file to the Vagrant directory"