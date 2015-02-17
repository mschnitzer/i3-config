#!/bin/sh

#create mode
cvt 1600 1200

#utilize mode
#xrandr --newmode "1600x1200_60.00"  161.00  1600 1712 1880 2160  1200 1203 1207 1245 -hsync +vsync

#disable laptop monitor
xrandr --output LVDS1 --off

#bind mode to monitor
xrandr --addmode HDMI2 1280x1024

#set DVI-0 resolution
xrandr --output HDMI2 --mode 1280x1024

#set DVI-1 resolution
xrandr --output VGA1 --mode 1680x1050

#set monitor postition
xrandr --output VGA1 --right-of HDMI2

#set monitor position 2
xrandr --output HDMI2 --left-of VGA1
