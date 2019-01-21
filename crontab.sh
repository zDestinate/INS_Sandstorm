#!/bin/bash

#This is for crontab to restart the servers
#This script will check if server is empty or not to restart it (By using http://insurgency.pro/api)
#Using screen to start the server up
#Make sure you put in the right path

#screen name
strSandstorm=("ss1" "ss2")
#path where sandstorm folders
strPath=("sandstorm" "sandstorm2")
#IP address of the servers
strIP="108.61.136.220"
#Port of the servers
strPort=(27102 27104)
bEmpty=()

#Check if there are players in the server
for port in "${strPort[@]}"; do
	#if there's NO player
	if curl -s http://insurgency.pro/api/$strIP:$port 2>&1 | grep -q "\"numplayers\": 0,"; then
		bEmpty+=(true)
	else
		bEmpty+=(false)
	fi
done

for((i = 0; i < ${#strSandstorm[@]}; i++)); do
	#if screen exist
	if screen -ls | grep -q ${strSandstorm[$i]}; then
		if [ "${bEmpty[$i]}" = true ]; then
			#kill the screen when there is no player
			screen -X -S ${strSandstorm[$i]} kill
			
			sleep 1
			
			#kill running process if screen failed to kill
			if ps -ef | grep -q -e "-multihome=$strIP" | grep "${strPort[$i]}" | grep -v 'grep'; then
				kill -9 `ps -ef | grep -e "-multihome=$strIP" | grep "${strPort[$i]}" | grep -v 'grep' | awk '{print $2}'`
			fi
		fi
	fi
	
	#if screen doesn't exist then run the server
	if ! screen -ls | grep -q ${strSandstorm[$i]}; then
		#locate start up and start it with screen
		cd /home/${strPath[$i]}
		screen -S ${strSandstorm[$i]} -d -m ./start.sh
	fi
done
