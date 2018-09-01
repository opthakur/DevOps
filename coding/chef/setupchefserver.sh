cd /etc
mv hosts hosts.bak
wget https://gitlab.com/roybhaskar9/devops/raw/master/coding/chef/hosts
cd ~
wget https://packages.chef.io/files/stable/chef-server/12.17.33/ubuntu/16.04/chef-server-core_12.17.33-1_amd64.deb
dpkg -i chef-server*.deb
chef-server-ctl reconfigure
chef-server-ctl user-create chefuser Chef User chefuser@chef.io 'chefuser123' --filename ~/chefuser.pem
wget https://packages.chef.io/files/stable/chef-manage/2.5.16/ubuntu/16.04/chef-manage_2.5.16-1_amd64.deb
dpkg -i chef-manage*.deb
# chef-server-ctl install chef-manage
chef-server-ctl reconfigure
chef-manage-ctl reconfigure --accept-license