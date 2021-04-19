#!/bin/bash

# Screen dimming
redshift &

# Polybar
polybar --config=$HOME/.config/dwm/polybar.conf eDP1 &

/usr/bin/dunst &

# Picom reduces graphical performance
/usr/bin/picom -b

# Set background
/usr/bin/feh --bg-scale /usr/share/wallpapers/current

# Wifi
/usr/bin/nm-applet &

sleep 3

# Apps
/usr/bin/discord &

