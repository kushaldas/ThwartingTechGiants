#!/bin/bash
regex='(?>(?>([a-f\d]{1,4})(?>:(?1)){3}|(?!(?:.*[a-f\d](?>:|$)){})((?1)(?>:(?1)){0,6})?::(?2)?)|(?>(?>(?1)(?>:(?1)){5}:|(?!(?:.*[a-f\d]:){6,})(?3)?::(?>((?1)(?>:(?1)){0,4}):)?)?(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)(?>\.(?4)){3}))\/\d{1,2}'

whois -h whois.radb.net -- '-i origin AS15169' | grep -Po "$regex" | while read -r ip; do
   
	iptables -I FORWARD 1 -i tun0 -d $ip -j LOG_AND_DROP_GOOGLE || ip6tables -I FORWARD 1 -i tun0 -d $ip -j LOG_AND_DROP_GOOGLE 
done
#additional ip ranges
