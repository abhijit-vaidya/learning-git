#
# Cookbook Name:: phpmulti
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "libaio" do
action :install
end

package "php" do
action :install
end

package "php-soap" do
action :install
end

package "php-pear" do
action :install
end

package "php-pear" do
action :upgrade
end

package "php-devel" do
action :install
end

package "php-mbstring" do
action :install
end

package "php-posix" do
action :install
end

package "php-pecl-apc" do
action :install
end

package "memcached" do
action :install
end

package "php-pecl-memcache" do
action :install
end

package "php-gd" do
action :install
end

package "php-mysql" do
action :install
end

package "php-xml" do
action :install
end

package "openssl" do
action :install
end

package "mod_ssl" do
action :install
end

package "php-xml" do
action :install
end

execute "Mail" do
command "pear install Mail-1.2.0"
not_if "pear list | grep -q '^Mail'"
end

execute "NetSmtp" do
command "pear install Net_SMTP"
not_if "pear list | grep -q '^Net_SMTP'"
end

execute "libmcrypt" do
command "rpm -Uvh #{node['libmcrypt']['rpm_url']}"
not_if "rpm -qa | grep -q '^libmcrypt'"
end

execute "orainstcli1" do
command "rpm -Uvh #{node['orainstcli1']['rpm_url']}"
not_if "rpm -qa | grep -q '^oracle-instantclient11.2-basic'"
end

execute "orainstcli2" do
command "rpm -Uvh #{node['orainstcli2']['rpm_url']}"
not_if "rpm -qa | grep -q '^oracle-instantclient11.2-devel'"
end

execute "phpmcrypt" do
command "rpm -Uvh #{node['phpmcrypt']['rpm_url']}"
not_if "rpm -qa | grep -q '^php-mcrypt'"
end

