echo "First, we will replace hosts file"
echo "Moving inside /etc"
cd /etc
echo "Existing content of /etc/hosts"
cat /etc/hosts
echo "Taking backup of existing /etc/hosts file"
mv hosts hosts.bak
echo "Here is the backup file"
ls -l /etc/hosts.bak
echo "Now downloading replacement hosts file"
wget https://gitlab.com/roybhaskar9/devops/raw/master/coding/chef/hosts
echo "Replaced hosts file and here is the new content"
ls -l /etc/hosts
cat /etc/hosts
echo "Now going back to home directory"
cd ~
echo "Modifying SSH Properties"
sudo sed -i '28s/prohibit-password/yes/' /etc/ssh/sshd_config
sudo sed -i '52s/no/yes/' /etc/ssh/sshd_config
echo "Restarting SSH"
sudo service ssh restart
echo "Now Chef Node is ready for Bootstrap. Run bootstrapping from Workstation"