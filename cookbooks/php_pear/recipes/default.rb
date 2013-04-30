#
# Cookbook Name:: php_pear
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

php_pear "Mail-1.2.0" do
action :install
end

php_pear "Net_SMTP" do
action :install
end


