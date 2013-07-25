#
# Cookbook Name:: app_samp
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "/var/www/.ssh" do
	owner "apache"
	group "apache"
	mode "0750"
	action :create
end

cookbook_file "/var/www/.ssh/id_rsa" do
	source "id_rsa"
	user "apache"
	group "apache"
	mode "0700"
end

cookbook_file "/var/www/.ssh/id_rsa.pub" do
	source "id_rsa.pub"
	user "apache"
	group "apache"
	mode "0700"
end

cookbook_file "/var/www/.ssh/known_hosts" do
	source "known_hosts"
	user "apache"
	group "apache"
	mode "0700"
end

application "web-demo" do
path "/var/www/html"
owner "apache"
group "apache"
repository "git@bitbucket.org:nclouds/app-samp.git"
end

service "httpd" do
action :restart
end


