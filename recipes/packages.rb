package 'install base packages' do
  package_name [
    'epel-release'.split(' ')
  ]
  action :upgrade
end

package 'install base packages' do
  package_name [
    'zsh mosh vim git tree tmux mercurial git-hg'.split(' ')
  ]
  action :upgrade
end

package 'install devel packages' do
  package_name %w(nginx golang fuse docker-common
                  ruby-devel ruby rubygems gcc make python-setuptools
                  rpmdevtools python2-devel python-sphinx libyaml-devel)
  action :upgrade
end

package 'upgrade openssl packages' do
  package_name %w(openssl openssl-devel)
  action :upgrade
end
