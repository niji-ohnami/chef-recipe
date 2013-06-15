#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service 'iptables' do
	action [:disable, :stop]
end

directory '/home/vagrant/chef/' do
	owner 'vagrant'
	group 'vagrant'
	mode '0755'
	action :create
end

directory '/home/vagrant/chef/recipe/' do
	owner 'vagrant'
	group 'vagrant'
	mode '0755'
	action :create
end

#link '/dev/null' do
#	to '/etc/udev/rules.d/70-persistent-net.rules'
#	link_type :symbol
#end
