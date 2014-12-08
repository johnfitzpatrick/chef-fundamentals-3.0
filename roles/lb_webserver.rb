name "lb_webserver"
description "Load Balancer and Webserver"
run_list "recipe[myapache]", "recipe[myhaproxy]"
default_attributes({
  "myapache" => {
    "sites" => {
      "monopoly" => {
        "port" => 82
      }
    }
  }
})

