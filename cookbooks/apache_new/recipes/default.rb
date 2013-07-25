#
# Cookbook Name:: apache_new
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "apache2" do
package_name node['apache']['package']	
end

service "apache2" do
case node['platform_family']
when "rhel","fedora"
service_name "httpd"
action [ :start, :enable ]
when "debian"
service_name "apache2"
action [ :start, :enable ]
end
end

if platform_family?("rhel", "fedora")
cookbook_file  "/var/www/html/index.html" do
source "index.html"
mode "0644"
end
end

if platform_family?("debian")
cookbook_file  "/var/www/index.html" do
source "index.html"
mode "0644"
end
end
