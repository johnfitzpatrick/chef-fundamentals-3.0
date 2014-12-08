#
# Cookbook Name:: myhaproxy
# Recipe:: default
#
# # Copyright (c) 2014 The Authors, All Rights Reserved.
# node.default['haproxy']['incoming_port'] = 8080

# node.default['haproxy']['incoming_port'] = 8080

node.default['haproxy']['admin']['address_bind'] = "0.0.0.0"
node.default['haproxy']['admin']['port'] = 8081
node.default['haproxy']['enable_stats_socket'] = true

# include_recipe "haproxy::app_lb"
# node.default['haproxy']['incoming_port'] = 8181


node.default['haproxy']['enable_default_http'] = false

include_recipe "haproxy::app_lb"
include_recipe "haproxy::default"
