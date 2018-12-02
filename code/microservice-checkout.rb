git 'microservice' do
  repository 'https://github.com/JJ/microservices-broker'
  user 'vagrant'
  group 'vagrant'
  destination '/home/vagrant/microservice'
  action :checkout
end
