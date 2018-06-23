package 'Install Apache' do
  case node[:platform]
  when 'redhat', 'centos'
    package_name 'httpd'
  when 'ubuntu', 'debian'
    package_name 'apache2'
  end
end

file '/etc/httpd/conf.d/welcome.conf' do
  action :delete
end

service 'httpd' do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end

template 'Configuring httpd' do
  source 'kibana.conf.erb'
  path   '/etc/httpd/conf.d/kibana.conf'
  mode   0644
  action :create
  notifies :restart, 'service[httpd]', :immediate
end
