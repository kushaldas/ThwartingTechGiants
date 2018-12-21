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
