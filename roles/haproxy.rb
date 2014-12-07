name "haproxy"
description "Load Balancer"
run_list "recipe[haproxy::app_lb]"
# run_list "role[base]", "recipe[myhaproxy]"
override_attributes(
  'haproxy' => {
    'app_server_role' => 'webserver'
  }
)
# default_attributes({
#   "haproxy" => {
#     "admin" => {
#        "port" => 9091
#      }
#   }
# })

