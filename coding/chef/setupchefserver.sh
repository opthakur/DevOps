wget https://packages.chef.io/files/stable/chef-server/12.17.33/ubuntu/16.04/chef-server-core_12.17.33-1_amd64.deb
dpkg -i chef-server*.deb
chef-server-ctl reconfigure
chef-server-ctl install chef-manage
chef-server-ctl reconfigure
chef-manage-ctl reconfigure
chef-server-ctl reconfigure
chef-server-ctl user-create chefuser Chef User chefuser@chef.io 'chefuser123' --filename ~/chefuser.pem