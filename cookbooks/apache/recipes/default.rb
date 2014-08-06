#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# remove the httpd package from the server
#package 'httpd' do
#	action :remove
#end

package 'httpd' do
  action :install
end

service 'httpd' do
  action [ :enable, :start ]
end

cookbook_file '/var/www/html/index.html' do
  source 'index.html'
  mode '0644'
end