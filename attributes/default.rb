# java attributes
default['java']['jdk_version'] = '8'
default['java']['install_flavor'] = 'openjdk'
default['java']['accept_license_agreement'] = true

# elasticsearch attributes
default['es']['user'] = 'elasticsearch'
default['es']['group'] = 'elasticsearch'
default['es']['version'] = '6.3.0'
default['es']['rpm'] = 'https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-%s.rpm'
default['es']['rpm-sha'] = 'aec27be211282072a49c61a36b00c5f46eb3f1f5f27165a4165ed794709b449e15692626ef6bd5bea5e8f7b52a3d6611ce031252d0038b6c5e0225e11f647e0c'

# kibana attributes
default['kibana']['version'] = '6.3.0'
default['kibana']['rpm'] = "https://artifacts.elastic.co/downloads/kibana/kibana-#{default['kibana']['version']}-x86_64.rpm"
default['kibana']['checksum'] = 'f760a6b7565348dbf1f820908cfef98c50a5d51c41cc99daa61689f8b6fd8566'

# log stash
default['logstash']['version'] = '6.3.0'
default['logstash']['rpm'] = "https://artifacts.elastic.co/downloads/logstash/logstash-#{default['logstash']['version']}.rpm"
default['logstash']['checksum'] = 'f2903761342693c9dd390ca7b2deb2a77ee74d9f3785e0e3c95d286730b2fdf3'
