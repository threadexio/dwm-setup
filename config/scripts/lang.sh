#!/usr/bin/env /usr/bin/bash

xkbmap="/usr/bin/setxkbmap"
grep="/usr/bin/grep"

langs=(
	us
	gr
)

current=$($xkbmap -query | $grep layout | $grep -Eo '[a-zA-Z]+$')

for ((i=0; i < ${#langs[@]}; i++)); do
	if [[ $current == ${langs[$i]} ]]; then
		if [[ ${langs[$((i+1))]} == "" ]]; then
			$xkbmap ${langs[0]}
			echo ${langs[0]}
		else
			$xkbmap ${langs[$((i+1))]}
			echo ${langs[$((i+1))]}
		fi

	fi
done


