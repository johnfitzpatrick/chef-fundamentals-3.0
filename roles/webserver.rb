name "webserver"
description "Web Server"
run_list "role[base]", "recipe[myapache]"
default_attributes({
  "myapache" => {
    "sites" => {
      "monopoly" => {
        "port" => 82
      }
    }
  }
})
