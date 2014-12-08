name "webserver"
description "Web Server"
run_list "role[base]", "recipe[myapache]"
default_attributes({
  "apache" => {
    "sites" => {
      "chess" => {
        "port" => 82
      }
    }
  }
})
