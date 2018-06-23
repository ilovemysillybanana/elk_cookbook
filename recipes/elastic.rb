elasticsearch_user node['es']['user'] do
  username node['es']['user']
  groupname node['es']['group']
  shell '/bin/bash'
  comment 'Elasticsearch User'
  action :create
end

elasticsearch_install 'elasticsearch' do
  type    'repository'
  version node['es']['version']
  action :install
end

elasticsearch_configure 'elasticsearch' do
  action :manage
end

elasticsearch_service 'elasticsearch' do
  action :configure
end

# elasticsearch_plugin 'x-pack' do
#   action :install
# end
