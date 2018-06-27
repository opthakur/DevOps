apt_update "package_update" do
  action :update
end
package "apache2" do
  action :install
end
service "apache2" do
  action :start
end
package "mysql-server" do
  action :install
end
package "php5-mysql" do
  action :install
end
service "mysql" do
  action :start
end
package "php5" do
  action :install
end
file '/var/www/html/index.html' do
action :delete
end
remote_file "/var/www/html/latest.tar.gz" do
   source "https://wordpress.org/latest.tar.gz"
   action :create
end
execute 'wordpress_install' do
  command "tar -xvzf /var/www/html/latest.tar.gz"
  cwd "/var/www/html/"
  creates "/tmp/file2.txt"
end
execute "wordpress_copy" do
  command "cp -R /var/www/html/wordpress/* /var/www/html/"
  cwd "/var/www/html/"
  creates "/tmp/file3.txt"
end
execute 'mysql_user' do
  command "mysqladmin -u root password abcd1234 && touch /tmp/file3.txt"
  creates "/tmp/file4.txt"
end
cookbook_file "/var/mysqlcommands" do
  source "mysqlcommands"
end
execute 'mysql_copy' do
  command "mysql -u root -pabcd1234 < /var/mysqlcommands && touch /tmp/file5.txt"
  creates "/tmp/file6.txt"
end
cookbook_file "/var/www/html/wp-config.php" do
  source "wp-config.php"
end
