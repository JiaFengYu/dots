#!/bin/sh
xrandr --output eDP-1 --off --output DP-1 --mode 1920x1080 --rate 144.00 --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off
xrandr --output DP-1 --scale 1.75x1.75
#feh --bg-scale /home/jiafengyu/Desktop/Wallpapers/rocket.jpg
# feh --bg-fill /home/jiafengyu/Desktop/Wallpapers/real_moon.jpg
feh --bg-fill /home/jiafengyu/Desktop/Wallpapers/nasa.png
picom
