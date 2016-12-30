package 'install base packages' do
  package_name [
    'zsh vim git tree tmux'.split(' ')
  ]
  action :upgrade
end

package 'install devel packages' do
  package_name %w(nginx go docker-common
                  ruby-devel ruby rubygems gcc make python-setuptools
                  rpmdevtools python2-devel python-sphinx libyaml-devel)
  action :upgrade
end

package 'upgrade openssl packages' do
  package_name %w(openssl openssl-devel)
  action :upgrade
end
