nameservers = `cat /etc/resolv.conf | grep ^nameserver | awk '{print $2}'`.split("\n").join(',')

output = ''
output << "${color0}Gateway IP: $color$gw_ip ${goto 180}${color0}DNS: $color #{nameservers}\n"
output << "${color0}Ethernet Ip: $color${addr enp4s0f2} ${goto 180}${color0}Wi-fi Ip: $color${addr wlp3s0}\n"
output << "${color0}${wireless_essid wlp3s0}: $color${wireless_link_qual_perc wlp3s0}${goto 110}% ${goto 125}${if_up wlp3s0}${wireless_link_bar 8,170 wlp3s0}${else}${color0}No wlan0$endif\n"
puts output
