sudo apt-get update
sudo apt-get install -y git
wget https://dl.gogs.io/0.11.53/gogs_0.11.53_linux_amd64.tar.gz
tar -xvzf gogs*.tar.gz
cd gogs*
./gogs web