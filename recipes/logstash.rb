remote_file 'Downloading Logstash' do
  path   '/tmp/logstash.rpm'
  owner  node['es']['user']
  group  node['es']['group']
  source node['logstash']['rpm']
  show_progress true
  checksum node['logstash']['checksum']
  retries 10
  retry_delay 60
  action :create
end

rpm_package 'Installing logstash' do
  allow_downgrade true
  package_name '/tmp/logstash.rpm'
  action :install
end

service 'logstash' do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end

cookbook_file '/etc/pki/tls/certs/logstash-forwarder.crt' do
  source 'logstash-forwarder.crt'
  mode '0644'
  action :create
end

cookbook_file '/etc/pki/tls/private/logstash-forwarder.key' do
  source 'logstash-forwarder.key'
  mode '0644'
  action :create
end

template 'Configuring logstash' do
  source 'logstash.conf.erb'
  path   '/etc/logstash/conf.d/logstash.conf'
  mode   0644
  action :create
  notifies :restart, 'service[logstash]', :immediate
end
