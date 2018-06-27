# A simple puppet code to install Apache, MySQL, PHP in puppet local mode
# Step 1
git clone https://github.com/roybhaskar9/puppetlamp
# Step 2
cd puppetlamp
# Step 3
puppet apply lamp.pp
# Step 4
# On Ubuntu
sudo apt-get install lynx
# On CentOS
yum install epel
yum install lynx
# Step 5
lynx localhost

(The output should show phpinfo output)
