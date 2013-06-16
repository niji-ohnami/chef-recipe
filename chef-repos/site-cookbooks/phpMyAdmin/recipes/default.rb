#
# Cookbook Name:: phpMyAdmin
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'phpMyAdmin' do
	action :install
end

cookbook_file '/etc/phpMyAdmin/config.inc.php' do
	mode 0644
end

cookbook_file '/etc/httpd/conf.d/phpMyAdmin.conf' do
	mode 0644
end
