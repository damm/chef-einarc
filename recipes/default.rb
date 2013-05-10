#
# Cookbook Name:: einarc
# Recipe:: default
#
# Copyright 2013, Scott M. Likens
#
include_recipe "build-essential"
include_recipe "git"
git Chef::Config[:file_cache_path] + "einarc" do
  repository node['einarc']['source_uri']
  reference node['einarc']['source_reference']
  action :sync
  notifies :run, "script[install einarc]"
end

script "install einarc" do
  interpreter "bash"
  cwd Chef::Config[:file_cache_path] + "einarc"
  if node['einarc']['modules'].empty?
  code <<-EOH
	./configure 
	mkdir -p proprietary && touch proprietary/agreed
	make && make install
	EOH
  else
  code <<-EOH
	./configure --modules=#{node['einarc']['modules'].join(",")}
	mkdir -p proprietary && touch proprietary/agreed
	make && make install
	EOH
  end
end
package "smartmontools" do
  action :install
end
