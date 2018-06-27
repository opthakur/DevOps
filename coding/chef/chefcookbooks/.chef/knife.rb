# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ashokcbe2015"
client_key               "#{current_dir}/ashokcbe2015.pem"
chef_server_url          "https://chefserver.c.warm-melody-187413.internal/organizations/honeywell"
cookbook_path            ["#{current_dir}/../cookbooks"]
