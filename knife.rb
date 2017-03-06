require 'chef/util/path_helper'
require 'chef/win32/file'
chef_file = Chef::ReservedNames::Win32::File
current_dir = File.dirname(chef_file.symlink?(__FILE__) ? chef_file.readlink(__FILE__) : __FILE__)

log_level                :info
log_location             STDOUT
node_name                '<name>'
client_key               "#{current_dir}/<user name>.pem"
validation_client_name   "chef-validator"
validation_key           "#{current_dir}/chef-validator.pem"
chef_server_url          "https:://<url to chef server>