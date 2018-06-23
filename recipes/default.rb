#
# Cookbook:: elk_cookbook
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe 'java::openjdk'
include_recipe 'elk_cookbook::elastic'
include_recipe 'elk_cookbook::kibana'
include_recipe 'elk_cookbook::logstash'
include_recipe 'elk_cookbook::httpd'

# selinux_state "SELinux Permissive" do
#   action :permissive
# end
#
# reboot 'SELinux Requires Reboot' do
#   action :request_reboot
#   reason 'Need to reboot when the run completes successfully.'
# end
