#
# Cookbook Name:: hello_chef_server
# Recipe:: database
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

mysql_service 'foo' do
  port '3306'
  bind_address '0.0.0.0'
  version '5.6'
  initial_root_password 'change me'
  action [:create, :start]
end
