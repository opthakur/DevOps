#sudo useradd sammy
#sudo usermod --append --groups lxd sammy
sudo apt-get update
sudo apt-get install zfsutils-linux lynx
sudo lxd init
# Select all default values, say no to ipv6
#sudo su sammy
echo "Lets look at all installed images"
echo "output for - lxc list :"
lxc list
echo "Lets look at all available ubuntu images"
echo "output for - lxc image list ubuntu :"
lxc image list ubuntu
echo "Lets look at all available other images"
echo "output for - lxc image list images :"
lxc image list images
echo "Lets download ubuntu xenial image and launch as webserver container"
echo "output for - lxc launch ubuntu:16.04 webserver :"
lxc launch ubuntu:16.04 webserver
echo "Lets look at the status of the launch"
echo "output for - lxc list :"
lxc list
echo "Login inside container with below command"
echo "lxc exec webserver -- sudo --login --user ubuntu"
echo "inside container you can install nginx that can be accessed from host using ip address for the container a mentioned in the lxc list ouput with lynx <ipaddress>"

