name 'elk_cookbook'
maintainer 'Jose M. Tobar'
maintainer_email 'josemtobarjobs@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures Elasticsearch, Logstash and Kibana'
long_description 'Installs/Configures Elasticsearch, Logstash and Kibana'
version '0.1.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

depends 'java', '~> 2.1.0'
depends 'elasticsearch', '~> 4.0.1'
depends 'nginx', '~> 8.1.2'
depends 'selinux', '~> 2.1.1'

supports 'amazon', '>= 2018.03'
supports 'centos', '>= 7.0'
supports 'fedora', '~> 28.0'
supports 'oracle', '>= 7.0'
supports 'redhat', '>= 7.0'

source_url 'https://github.com/ilovemysillybanana/elk_cookbook' if respond_to?(:source_url)
issues_url 'https://github.com/ilovemysillybanana/elk_cookbook/issues' if respond_to?(:issues_url)
