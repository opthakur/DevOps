mkdir vagrant
cd vagrant
mkdir centos ubuntu
cd centos
vagrant init centos/7
vagrant up && vagrant halt
cd ../ubuntu
vagrant init ubuntu/xenial64
vagrant up && vagrant halt