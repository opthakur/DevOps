apt_package "php5" do
 action :install
 not_if { node['platform'] == 'centos' }
end