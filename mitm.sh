#!/bin/bash
if [[ $* == *--flag* ]]; then
	iptables -D PREROUTING -i tun0 -t nat -p tcp --dport 80 -j REDIRECT --to-port 8080
	iptables -D PREROUTING -i tun0 -t nat -p tcp --dport 443 -j REDIRECT --to-port 8080
	iptables -D PREROUTING -i tun0 -t nat -p udp --dport 80 -j REDIRECT --to-port 8080
	iptables -D PREROUTING -i tun0 -t nat -p udp --dport 443 -j REDIRECT --to-port 8080

else
	iptables -A PREROUTING -i tun0 -t nat -p tcp --dport 80 -j REDIRECT --to-port 8080
	iptables -A PREROUTING -i tun0 -t nat -p tcp --dport 443 -j REDIRECT --to-port 8080
	iptables -A PREROUTING -i tun0 -t nat -p udp --dport 80 -j REDIRECT --to-port 8080
	iptables -A PREROUTING -i tun0 -t nat -p udp --dport 443 -j REDIRECT --to-port 8080
fi
exit
