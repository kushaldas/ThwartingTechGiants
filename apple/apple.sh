#!/bin/bash
iptables -I FORWARD 1 -i tun0 -d 17.0.0.0/8 -j LOG_AND_DROP_APPLE;
exit
