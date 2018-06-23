remote_file 'Downloading Kibana' do
  path   '/tmp/kibana.rpm'
  owner  node['es']['user']
  group  node['es']['group']
  source node['kibana']['rpm']
  show_progress true
  checksum node['kibana']['checksum']
  retries 10
  retry_delay 60
  action :create
end

rpm_package 'Installing Kibana' do
  allow_downgrade true
  package_name '/tmp/kibana.rpm'
  action :install
end

template 'Configuring Kibana' do
  source 'kibana.yml.erb'
  path   '/etc/kibana/kibana.yml'
  mode   0644
  action :create
end

service 'kibana' do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end
