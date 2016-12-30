#
# Cookbook Name:: conoha
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
username = 'yokada'
home_dir = format('/home/%s/', username)
# https://docs.chef.io/resource_user.html
user username do
  gid 100
  password '$6$4WFoWETj$Stn/jzddz.D7Xtt.IlXnlLHgxu.cgVKqajMbc3qUYQasfMHE9BxuVnaGcKssBdz0CLGsVd9KuZ56ltsbTyd2h.'
  home '/home/yokada'
  shell '/bin/zsh'
  action :create
end
# yuokada ALL=(ALL)       NOPASSWD: ALL
directory home_dir + '.ssh' do
  owner username
  group 'users'
  mode 00755
  recursive true
  action :create
end

template home_dir + '.ssh/authorized_keys' do
  source 'authorized_keys.erb'
  owner username
  group 'users'
  mode 00600
  action :create
end

# hive user
user 'hive' do
  supports manage_home: true
  action :create
end

include_recipe 'conoha::packages'
