#!/bin/bash

# Polybar
polybar --config=~/.dwm/polybar.conf example &

/usr/bin/dunst &

# Picom reduces graphical performance
/usr/bin/picom -b

# Set background
/usr/bin/feh --bg-scale /usr/share/wallpapers/sunset.jpg

# Wifi
/usr/bin/nm-applet &

sleep 3

# Apps
/usr/bin/discord &

