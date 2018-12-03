user 'app' do
  comment 'User for app'
  home '/app'
  shell '/bin/bash'
  password '$1$nDj1YEqy$vxf1HTVTE/Q/4.zBB1iH20'
end

directory '/app' do
  owner 'app'
  group 'app'
  mode '0755'
end

git 'microservice' do
  repository 'https://github.com/JJ/microservices-broker'
  user 'app'
  group 'app'
  destination '/app'
  action :checkout
end

chef_gem 'bunny'
chef_gem 'sinatra'
chef_gem 'json'
chef_gem 'httparty'
chef_gem 'sqlite3'
chef_gem 'etcdv3'
