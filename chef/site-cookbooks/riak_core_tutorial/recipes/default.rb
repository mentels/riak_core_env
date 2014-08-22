#
# Cookbook Name:: riak_core_tutorial
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

git "/home/vagrant/synced/riak_core_tutorial" do
  repository "https://github.com/mentels/riak_core_tutorial"
  reference "master"
  action :sync
end

directory dir = "/home/vagrant/synced/riak_core_tutorial/hello_multinode" do
  owner "vagrant"
  group "vagrant"
  mode 00755
  action :create
  not_if {
    File.exist?(dir)
  }
end

remote_file "/home/vagrant/synced/riak_core_tutorial/hello_multinode/rebar" do
  source "http://cloud.github.com/downloads/basho/rebar/rebar"
  owner "vagrant"
  group "vagrant"
  mode 00555
end




