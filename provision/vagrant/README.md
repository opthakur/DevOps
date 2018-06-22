common vagrant commands:

vagrant init operatingsystemname/version

Example: vagrant init centos/7

download a vagrant box: vagrant box add ubuntu/xenial64

download and bring up a virtual machine: vagrant up

check virtual machine status inside a folder: vagrant status

check all virtual machines: vagrant global-status

login inside a virtualmachine that is already running: vagrant ssh

exit out of virtualmachine: exit

shutdown virtualmachine: vagrant halt

delete virtualmachine: vagrant destroy


Vagrant Export Commands:
vagrant package --output newboximage
vagrant box add newbox newboximage.box
vagrant box list
mkdir -p ~/devops/provision/vagrant/newbox
cd ~/devops/provision/vagrant/newbox
vagrant init newbox
vagrant up && vagrant ssh
vagrant halt
