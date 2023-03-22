#!/bin/sh
xrandr --newmode "2736x1824_60.00"  426.00  2736 2952 3248 3760  1824 1827 1837 1890 -hsync +vsync
xrandr --addmode eDP-1 "2736x1824_60.00"
xrandr --output eDP-1 --mode "2736x1824_60.00"

#xrandr "1920x1080_144.00"  452.50  1920 2088 2296 2672  1080 1083 1088 1177 -hsync +vsync
#xrandr --addmode DP-1 "1920x1080_144.00"
#xrandr --output DP-1 "1920x1080_144.00"

#xrandr --output DP-1 --scale 2x2
#xrandr --output DP-1 --scale 1.75x1.75
