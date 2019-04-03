#! /bin/bash
cd ~
cd ~/devops/coding/chef
rmdir *
wget https://gitlab.com/roybhaskar9/devops/raw/master/coding/chef/Vagrantfile
vagrant up
vagrant ssh chefserver