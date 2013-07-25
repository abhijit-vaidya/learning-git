#
# Cookbook Name:: apache_remove
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service "apache2" do
case node["platform_family"]
when "rhel","fedora"
service_name "httpd"
action :stop
when "debian"
service_name "apache2"
action :stop
end
end

if platform_family?("rhel", "fedora")
cookbook_file "/var/www/html/index.html" do
action :delete
end
end

if platform_family?("debian")
cookbook_file "/var/www/index.html" do
action :delete
end
end

package "apache2" do
package_name node['apache']['package']
action :remove
end

