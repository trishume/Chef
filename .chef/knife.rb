require 'librarian/chef/integration/knife'
current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "trishume"
client_key               "#{current_dir}/trishume.pem"
validation_client_name   "trishume-validator"
validation_key           "#{current_dir}/trishume-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/trishume"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_path Librarian::Chef.install_path,
              "#{current_dir}/../site-cookbooks"
