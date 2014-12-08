name 'haproxy'
description 'Load Balancer'
run_list 'role[base]', 'recipe[haproxy::app_lb]', 'recipe[haproxy]'
override_attributes({
  'haproxy' => {
    'enable_default_http' => false,
    'enable_stats_socket' => true,
    'member_port' => 8080,
    'app_server_role' => 'haproxy-apache'
    }
})
default_attributes({
  'haproxy' => {
    'admin' => {
       'port' => 9091,
       'address_bind' => '0.0.0.0'
     }
  }
})

# override_attributes({
#   'haproxy' => {
#     'enable_default_http' => false,
#     'mode' => 'http',
#     'member_port' => 8081,
#     'app_server_role' => 'haproxy-apache',
#     'incoming_address' => '0.0.0.0',
#     'incoming_port' => 80,
# # 'listeners' => {
# #   'listen' => {'http'=> ':80'},
# #   'frontend' => {},
# #   'backend' => {}
# #   }
# }})


# name 'haproxy'
# description 'Load Balancer'
# run_list 'role[base]', 'recipe[haproxy::app_lb]', 'recipe[haproxy]'
# override_attributes({
#   'haproxy' => {
#     'enable_default_http' => false,
#     'member_port' => 8081,
#     'app_server_role' => 'haproxy-apache',
#     'incoming_address' => '0.0.0.0',
#     'incoming_port' => 80,
# # 'listeners' => {
# #   'listen' => {'servers'=> ':80'},
# #   'frontend' => {},
# #   'backend' => {}
#   # }
# }})
# default_attributes({
#   'haproxy' => {
#     'admin' => {
#        'port' => 9091,
#        'address_bind' => '0.0.0.0'
#      }
#   }
# })