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
execute 'sample_execution' do
   command 'wget google.com -O /tmp/index.html'
   not_if {File.exists?("/tmp/index.html")}
end
