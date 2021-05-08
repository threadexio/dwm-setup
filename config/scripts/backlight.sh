#!/usr/bin/env /usr/bin/bash

min=10

backlight="/usr/bin/xbacklight"

a=$($backlight -get)
b=${a%.*}

if [[ $# == 2 ]]; then
    if [[ $1 == "inc" ]]; then
        $backlight -inc $2
	exit
    elif [[ $1 == "dec" ]]; then
	if [[ $((${b}-${2})) -lt $min ]]; then
		$backlight -set $min
		exit
	fi
        $backlight -dec $2
	exit
    fi
else
	echo $b
fi
