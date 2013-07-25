#
# Cookbook Name:: app_dep
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




deploy "/var/www/html" do
repo "git@bitbucket.org:nclouds/app-samp.git"
#deploy_to "/var/www/html/"
revision "HEAD"
user "apache"
group "apache"
action :deploy
symlink_before_migrate.clear
create_dirs_before_symlink.clear
purge_before_symlink.clear
symlinks.clear
scm_provider Chef::Provider::Git
restart_command do
      service "httpd" do action :restart; end
end
end
