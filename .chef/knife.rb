# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "jgrenoble"
client_key               "#{current_dir}/jgrenoble.pem"
validation_client_name   "jesse-grenoble-validator"
validation_key           "#{current_dir}/jesse-grenoble-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/jesse-grenoble"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
