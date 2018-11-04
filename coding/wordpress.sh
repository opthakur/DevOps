sudo apt install -y apache2
sudo service apache2 start
sudo apt install -y mysql-server mysql-client
sudo apt install -y php libapache2-mod-php php-mcrypt php-mysql
mysqladmin -u root password rootpassword
wget https://gitlab.com/roybhaskar9/devops/raw/master/coding/chef/chefwordpress/files/default/mysqlcommands
cp mysqlcommands /tmp/mysqlcommands
mysql -uroot -prootpassword < /tmp/mysqlcommands
wget https://wordpress.org/latest.zip
apt install -y unzip
unzip /tmp/latest.zip -d /var/www/html
wget https://gitlab.com/roybhaskar9/devops/raw/master/coding/chef/chefwordpress/files/default/wp-config-sample.php
cp wp-config-sample.php /var/www/html/wordpress/wp-config.php
chmod -R 775 /var/www/html/wordpress
chown -R apache:apache /var/www/html/wordpress