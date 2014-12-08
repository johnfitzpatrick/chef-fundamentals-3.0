name "haproxy-apache"
description "Load Balancer & Webserver"
run_list "role[base]", "recipe[myapache]", "recipe[myhaproxy]"
default_attributes({
  "haproxy" => {
    "admin" => {
       "port" => 9090
     }
  }
})

