# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

log "Welcome to chef #{node["starter_name"]!" do
  level :info
end

package "apache2" do
  action :install
end
service "apache2" do
action :start
end
file "/tmp/file1" do
  content "Hello world"
end
remote_file "wordpress_latest" do
    source 'http://wordpress.org/latest.tar.gz'
    path "/tmp/latest.tar.gz"
end
cookbook_file "/tmp/example.txt" do
  source "sample.txt"
end
template "/var/www/html/index.html" do
   source "sample.erb"
   variables :hostname => node["fqdn"], :codewords => ["alpha","bravo","charlie"]
end
execute 'sample_execution' do
   command 'wget google.com -O /tmp/index.html'
   not_if {File.exists?("/tmp/index.html")}
end



# For more information, see the documentation: https://docs.chef.io/essentials_cookbook_recipes.html
