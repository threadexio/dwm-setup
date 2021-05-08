#!/usr/bin/bash

playing=""
paused=""

#playing=""
#paused=""

while true; do
	status="$(/usr/bin/playerctl status)"
	if [[ "$status" == "Playing" ]]; then
		playerctl metadata --format "$playing  {{ artist }} - {{ title }}"
	elif [[ "$status" == "Paused" ]]; then
		playerctl metadata --format "$paused  {{ artist }} - {{ title }}"
	else
		echo
	fi
	/usr/bin/sleep 1
done
