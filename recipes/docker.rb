package 'install & upgrade docker packages' do
  package_name %w(docker docker-common)
  action :upgrade
end

service 'docker' do
  supports status: true
  action [:enable, :start]
end
