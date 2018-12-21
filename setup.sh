#!/bin/bash
iptables -N LOG_AND_DROP_MICROSOFT
iptables -A LOG_AND_DROP_MICROSOFT -j LOG --log-prefix "Blocking MICROSOFT:       "
iptables -A LOG_AND_DROP_MICROSOFT -j DROP
ip6tables -N LOG_AND_DROP_MICROSOFT
ip6tables -A LOG_AND_DROP_MICROSOFT -j LOG --log-prefix "Blocking MICROSOFT:       "
ip6tables -A LOG_AND_DROP_MICROSOFT -j DROP

iptables -N LOG_AND_DROP_AMAZON
iptables -A LOG_AND_DROP_AMAZON -j LOG --log-prefix "Blocking Amazon:       "
iptables -A LOG_AND_DROP_AMAZON -j DROP
ip6tables -N LOG_AND_DROP_AMAZON
ip6tables -A LOG_AND_DROP_AMAZON -j LOG --log-prefix "Blocking Amazon:       "
ip6tables -A LOG_AND_DROP_AMAZON -j DROP

iptables -N LOG_AND_DROP_FACEBOOK
iptables -A LOG_AND_DROP_FACEBOOK -j LOG --log-prefix "Blocking FACEBOOK:       "
iptables -A LOG_AND_DROP_FACEBOOK -j DROP
ip6tables -N LOG_AND_DROP_FACEBOOK
ip6tables -A LOG_AND_DROP_FACEBOOK -j LOG --log-prefix "Blocking FACEBOOK:       "
ip6tables -A LOG_AND_DROP_FACEBOOK -j DROP

iptables -N LOG_AND_DROP_GOOGLE
iptables -A LOG_AND_DROP_GOOGLE -j LOG --log-prefix "Blocking GOOGLE:       "
iptables -A LOG_AND_DROP_GOOGLE -j DROP
ip6tables -N LOG_AND_DROP_GOOGLE
ip6tables -A LOG_AND_DROP_GOOGLE -j LOG --log-prefix "Blocking GOOGLE:       "
ip6tables -A LOG_AND_DROP_GOOGLE -j DROP

iptables -N LOG_AND_DROP_APPLE
iptables -A LOG_AND_DROP_APPLE -j LOG --log-prefix "Blocking APPLE:       "
iptables -A LOG_AND_DROP_APPLE -j DROP
ip6tables -N LOG_AND_DROP_APPLE
ip6tables -A LOG_AND_DROP_APPLE -j LOG --log-prefix "Blocking APPLE:       "
ip6tables -A LOG_AND_DROP_APPLE -j DROP
iptables -I FORWARD 1 -i tun0 -j LOG --log-prefix "packet:"
