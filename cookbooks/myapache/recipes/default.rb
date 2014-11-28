package "httpd" do
  action :install
end

template "/var/www/html/index.html" do
  source "index.html.erb"
  action :create
  mode "0777"
end

service "httpd" do
  supports :restart => :true
  action [:enable, :start]
end


