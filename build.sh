#!/bin/bash
# regex='(?>(?>([a-f\d]{1,4})(?>:(?1)){3}|(?!(?:.*[a-f\d](?>:|$)){})((?1)(?>:(?1)){0,6})?::(?2)?)|(?>(?>(?1)(?>:(?1)){5}:|(?!(?:.*[a-f\d]:){6,})(?3)?::(?>((?1)(?>:(?1)){0,4}):)?)?(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)(?>\.(?4)){3}))\/\d{1,2}'

# whois -h whois.radb.net -- '-i origin AS8075' | grep -Po "$regex" | while read -r ip; do
   
# 	iptables -I FORWARD 1 -i tun0 -d $ip -j LOG_AND_DROP_MICROSOFT || ip6tables -I FORWARD 1 -i tun0 -d $ip -j LOG_AND_DROP_MICROSOFT 
# done
# #additional ip ranges
#!/bin/bash
INPUT=AS.csv
OLDIFS=$IFS
IFS=,
LIMIT="none"

build_rules () {
	echo "$company"
	whois -h whois.radb.net -- "-i origin ${as}" | grep ^route | while read -r ip; do
		ip=${ip//[[:blank:]]/}
		ip=${ip#"route"}
		ip=${ip#"6:"}
		ip=${ip#":"}
		ip=${ip//[[:blank:]]/}
		pfctl -t techgiant -T add "$ip"
	done

} 

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
  else
	LIMIT=$1
fi

[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

while read company as 
do
	if [[ $LIMIT == $company || $LIMIT == "none" ]]; then
	    build_rules "$as" "$company"
	fi

done < $INPUT
