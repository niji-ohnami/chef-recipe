#
# Cookbook Name:: mysql51
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'mysql-server' do
	action :install
end

service 'mysqld' do
	supports :status => true,:restart => true, :reload => true
	action [:enable,:start]
end
