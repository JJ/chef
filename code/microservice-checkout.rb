user 'app' do
  comment 'User for app'
  home '/app'
  shell '/bin/bash'
  password '$1$JJsvHslasdfjVEroftprNn4JHtDi'
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
