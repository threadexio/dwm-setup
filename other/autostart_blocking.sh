#!/bin/bash

# Wifi
/usr/bin/nm-applet &

/usr/local/bin/slstatus &

# Set background
/usr/bin/feh --bg-scale /usr/share/wallpapers/abstract.jpg

sleep 3

# Apps
/usr/bin/discord &

