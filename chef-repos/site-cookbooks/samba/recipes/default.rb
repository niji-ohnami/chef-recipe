#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

cookbook_file '/etc/samba/smb.conf' do
	mode 0644
end

service 'smb' do
	supports :status => true,:restart => true, :reload => true
	action [:enable,:start]
end

service 'nmb' do
	supports :status => true,:restart => true, :reload => true
	action [:enable,:start]
end
