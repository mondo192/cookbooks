#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2020 The Authors, All Rights Reserved.

package 'httpd'

template "/var/www/html/index.html" do
  source "index.html.erb"
end

# file '/var/www/html/index.html' do
#  content "<h1>Hello, world!</h1>
#        <h2>ipaddress: #{node['ipaddress']}</h2>
#           <h2>hostname: #{node['hostname']}</h2>"
#end 

service 'httpd' do
  action [:start, :enable]
end
