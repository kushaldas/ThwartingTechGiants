#!/bin/bash

iptables -I FORWARD 1 -i tun0 -m iprange --dst-range 172.0.0.0-172.217.255.255 -j LOG_AND_DROP_GOOGLE;
iptables -I FORWARD 1 -i tun0 -m iprange --dst-range 64.233.160.0-64.233.191.255  -j LOG_AND_DROP_GOOGLE;
iptables -I FORWARD 1 -i tun0 -m iprange --dst-range 66.102.0.0-66.102.15.255  -j LOG_AND_DROP_GOOGLE;
iptables -I FORWARD 1 -i tun0 -m iprange --dst-range 66.249.64.0-66.249.95.255  -j LOG_AND_DROP_GOOGLE;
iptables -I FORWARD 1 -i tun0 -m iprange --dst-range 72.14.192.0-72.14.255.255 -j LOG_AND_DROP_GOOGLE;
iptables -I FORWARD 1 -i tun0 -m iprange --dst-range 74.125.0.0-74.125.255.255 -j LOG_AND_DROP_GOOGLE;
iptables -I FORWARD 1 -i tun0 -m iprange --dst-range 209.85.128.0-209.85.255.255 -j LOG_AND_DROP_GOOGLE;
iptables -I FORWARD 1 -i tun0 -m iprange --dst-range 216.239.32.0-216.239.63.255 -j LOG_AND_DROP_GOOGLE;
iptables -I FORWARD 1 -i tun0 -m iprange --dst-range 216.58.0.0-216.239.63.255 -j LOG_AND_DROP_GOOGLE;
iptables -I FORWARD 1 -i tun0 -m iprange --dst-range 173.194.0.1-173.194.255.255 -j LOG_AND_DROP_GOOGLE;
iptables -I FORWARD 1 -i tun0 -m iprange --dst-range 173.194.0.1-173.194.255.255 -j LOG_AND_DROP_GOOGLE;
iptables -I FORWARD 1 -i tun0 -m iprange --dst-range 54.204.0.0-54.204.255.255 -j LOG_AND_DROP_GOOGLE;
iptables -I FORWARD 1 -i tun0 -m iprange --dst-range 130.211.0.0-130.211.255.255 -j LOG_AND_DROP_GOOGLE;
exit
