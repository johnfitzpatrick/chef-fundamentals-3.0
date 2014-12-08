name "loadbalancer"
description "Load Balancer"
run_list "recipe[myhaproxy]"
default_attributes({
  "haproxy" => {
    "admin" => {
       "port" => 9090
     }
  }
})
