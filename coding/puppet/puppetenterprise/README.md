# puppetenterprise

Direct Download: 
For Ubuntu/Trusty64: https://s3.amazonaws.com/pe-builds/released/2017.2.4/puppet-enterprise-2017.2.4-ubuntu-14.04-amd64.tar.gz
For Ubuntu/Xenial: https://s3.amazonaws.com/pe-builds/released/2018.1.3/puppet-enterprise-2018.1.3-ubuntu-16.04-amd64.tar.gz

Download this Vagrantfile: wget https://raw.githubusercontent.com/roybhaskar9/puppetenterprise/master/Vagrantfile

Vagrant command: vagrant up && vagrant ssh

Windows C:\Windows\System32\Drivers\etc\hosts file entry: 192.168.11.10  puppetmaster.example.com  puppetmaster  puppet

Installation steps: 

sudo su -

cd puppet*

./puppet-enterprise-installer

[When asked, press enter and wait till the installer pauses]

Go to https://puppetmaster.example.com:3000 and follow guided installation through web wizard

