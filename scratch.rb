jhnftz-web - 54.86.49.178

jhnftz-lb - 54.173.181.13
jhnftz-lb2 - 54.172.73.11


In my ec2 node, OHAI is populating the 'ipaddress' attribute with the Private IP, and there's no 'public_ipv4' value.  Is there anything special I need to do to for ec2?


knife bootstrap 54.172.73.11 --sudo -x chef -P chef -N "ha1" -r "role[haproxy]"


% knife hp server create --flavor 100 --image 48335 --ssh-key USERNAME -N lb1.yet.org -r 'role[base],role[yet_lb]' --ssh-user ubuntu -E production_hpcloud

http://www.yet.org/2012/12/yet-infra-2/

Cloudshare
Webserver - knife bootstrap uvo1jzknf3fyf68vg2c.vm.cld.sr --sudo -x chef -P chef -N "cloudsharewebnode" -r "role[webserver]"

HAproxy - knife bootstrap uvo1qzrtv86iqo0tycl.vm.cld.sr --sudo -x chef -P chef -N "cloudsharehaproxynode" -r "role[haproxy]"

https://github.com/MentorEmbedded/chef-haproxy/blob/master/recipes/app_lb.rb

			TAKE2
			jhnftz-web - 54.172.215.20
			jhnftz-lb - 54.174.145.89

			knife bootstrap 54.172.215.20 --sudo -x chef -P chef -N "webdec8" -r "role[webserver]"
			knife bootstrap 54.174.145.89 --sudo -x chef -P chef -N "hapdec8" -r "role[haproxy]"

TAKE3

jhnftz-web1 - 54.165.14.149
jhnftz-web2 - 54.174.38.173
jhnftz-lb - 54.172.175.6


knife bootstrap 54.165.14.149 --sudo -x chef -P chef -N "haweb-node1" -r "role[webserver]"
knife bootstrap 54.174.38.173 --sudo -x chef -P chef -N "haweb-node2" -r "role[webserver]"
knife bootstrap 54.172.175.6  --sudo -x chef -P chef -N "ha-node" -r "role[haproxy]"
