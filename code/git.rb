package 'git' do
  action :install
end

git 'microservice' do
  repository 'https://github.com/JJ/microservices-broker'
  user 'vagrant'
  destination '/home/vagrant/microservice'
  action :checkout
end