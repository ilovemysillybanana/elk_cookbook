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
