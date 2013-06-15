#
# Cookbook Name:: php54
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{ php54 
	php54-cli 
	php54-common 
	php54-dba 
	php54-debuginfo 
	php54-devel 
	php54-gd 
	php54-imap 
	php54-intl 
	php54-ldap 
	php54-mbstring 
	php54-mcrypt 
	php54-mysql 
	php54-pdo 
	php54-pear 
	php54-pecl-apc 
	php54-pecl-apc-debuginfo
	php54-pecl-geoip 
	php54-pecl-geoip-debuginfo 
	php54-pecl-imagick 
	php54-pecl-imagick-debuginfo
	php54-pecl-memcache 
	php54-pecl-memcache-debuginfo 
	php54-pecl-xdebug 
	php54-pecl-xdebug-debuginfo
	php54-soap 
	php54-xml 
	php54-xmlrpc
}. each do |pkg|
	package pkg do
		action :install
	end
end

cookbook_file '/etc/php.ini' do
	mode 0644
end
