#
# Cookbook Name:: http
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "httpd" do
action :install
end

package "httpd-devel" do
action :install
end

service "httpd" do
action [ :start, :enable ]
end
