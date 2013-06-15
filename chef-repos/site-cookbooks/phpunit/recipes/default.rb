#
# Cookbook Name:: phpunit
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory '/home/vagrant/chef/recipe/phpunit/' do
	owner 'vagrant'
	group 'vagrant'
	mode '0755'
	action :create
end

bash " install phpunit addchannels" do
	code <<-EOC
		pear channel-discover pear.phpunit.de
		pear channel-discover components.ez.no
		pear channel-discover pear.symfony-project.com
		pear channel-discover pear.symfony.com
		touch /home/vagrant/chef/recipe/phpunit/addchannels-done.txt
	EOC
	creates "/home/vagrant/chef/recipe/phpunit/addchannels-done.txt"
end

bash " install phpunit main" do
	code <<-EOC
		pear install --alldeps phpunit/PHPUnit
		touch /home/vagrant/chef/recipe/phpunit/phpunit-install-done.txt
	EOC
	creates "/home/vagrant/chef/recipe/phpunit/phpunit-install-done.txt"
end
