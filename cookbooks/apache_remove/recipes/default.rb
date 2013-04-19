#
# Cookbook Name:: apache_remove
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service "httpd" do
action :stop
end
package "httpd" do
action :remove
end
