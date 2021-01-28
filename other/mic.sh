#!/usr/bin/env /usr/bin/bash

pamixer='/usr/bin/pamixer'

source="--default-source"
state=$($pamixer $source --get-mute)

if [[ $1 == "get-volume" ]]; then 
	[[ $# == 2 ]] && source="--source $2"
	echo -n "$($pamixer --get-volume-human $source)"
	exit 0
fi
[[ $# == 1 ]] && source="--source $1"

if [[ "$state" == "false" ]]; then
	$pamixer $source -m
elif [[ "$state" == "true" ]]; then
	$pamixer $source -u
fi

