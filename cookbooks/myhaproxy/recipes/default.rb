node.default['haproxy']['incoming_port'] = 8080
node.default['haproxy']['members'] = [{
  "hostname" => "localhost",
  "ipaddress" => "127.0.0.1",
  "port" => 80,
  "ssl_port" => 80
}, {
  "hostname" => "localhost",
  "ipaddress" => "127.0.0.1",
  "port" => 81,
  "ssl_port" => 81
}]

node.default['haproxy']['admin']['address_bind'] = "0.0.0.0"
node.default['haproxy']['admin']['port'] = 8081
node.default['haproxy']['enable_stats_socket'] = true

include_recipe "haproxy::default"
