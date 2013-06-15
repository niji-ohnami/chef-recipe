#
# Cookbook Name:: memcached
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'memcached' do
	action :install
end

service 'memcached' do
	supports :status => true,:restart => true, :reload => true
	action [:enable,:start]
end

