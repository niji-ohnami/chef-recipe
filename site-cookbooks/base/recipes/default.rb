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

#link '/dev/null' do
#	to '/etc/udev/rules.d/70-persistent-net.rules'
#	link_type :symbol
#end
