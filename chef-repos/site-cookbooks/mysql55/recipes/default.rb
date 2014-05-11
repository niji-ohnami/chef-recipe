#
# Cookbook Name:: mysql55
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#package 'mysql-server' do
#	action :install
#end

service 'mysqld' do
	supports :status => true,:restart => true, :reload => true
	action [:enable,:start]
end

directory '/home/vagrant/chef/recipe/mysql/' do
	owner 'vagrant'
	group 'vagrant'
	mode '0755'
	action :create
end

bash " setup mysql config statement" do
	code <<-EOC
		rm /home/vagrant/chef/recipe/mysql/config.sql
		touch /home/vagrant/chef/recipe/mysql/config.sql
		echo "CREATE USER 'root'@'%';" >> /home/vagrant/chef/recipe/mysql/config.sql
		echo "GRANT ALL PRIVILEGES ON * . * TO 'root'@'%';" >> /home/vagrant/chef/recipe/mysql/config.sql
	EOC
end

bash " setup mysql config execute" do
	code <<-EOC
		mysql -u root < /home/vagrant/chef/recipe/mysql/config.sql
		touch /home/vagrant/chef/recipe/mysql/config-execute-done.txt
	EOC
	creates "/home/vagrant/chef/recipe/mysql/config-execute-done.txt"
end
