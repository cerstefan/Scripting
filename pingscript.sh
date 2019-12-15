#!/bin/bash
if [ "$1" == "" ]
then
echo "Utilizare: ./pingscript.sh [retea]"
echo "Exemplu: ./pingscript.sh 192.168.10"
else
echo "Sistemele care sunt conectate la aceasta retea "$1" au urmatoarele ip-uri: (va rugam asteptati. Se cauta ip-uri) "
	for x in `seq 1 254`; do
	ping -c 1 $1.$x | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//'
	done
fi
