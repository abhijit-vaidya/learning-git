case platform
when "redhat", "centos"
default['apache']['package'] = "httpd"

when "ubuntu"
default['apache']['package'] = "apache2"
end
