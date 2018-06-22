sudo apt-get -y install cgroup-bin cgroup-lite libcgroup1 elinks
sudo adduser bork
sudo cgcreate -a bork -g memory:mycoolgroup
sudo echo 1000000 >  /sys/fs/cgroup/memory/mycoolgroup/memory.kmem.limit_in_bytes
# Now if  you login as bork user then the memory will be limited to 1mb only
sudo cgexec  -g memory:mycoolgroup bash
elinks
#with 1mb memory available the elinks execution should fail

