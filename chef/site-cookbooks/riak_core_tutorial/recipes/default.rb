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
