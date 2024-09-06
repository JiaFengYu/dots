#!/bin/bash

output_info=$(swaymsg -t get_outputs)
# Extract available modes for DP-3 using jq
available_modes=$(echo "$output_info" | jq -r '.[] | select(.name == "DP-3") | .modes[] | "\(.width)x\(.height)@\(.refresh)"')


if echo "$output_info" | jq -e '.[] | select(.name == "DP-3")' > /dev/null; then
    if echo "$available_modes" | grep -q '3840x2160@59997'; then
        swaymsg output DP-3 mode 3840x2160@59.997Hz
        #swaybg -i /home/jiafengyu/Wallpapers/nasa.png -m fill -o DP-3
        swaymsg output eDP-1 disable
        echo "DP-3 set to 4K resolution (3840x2160 @ 59.997 Hz)"
    elif echo "$available_modes" | grep -q '1920x1080@144001'; then
        # If 1080p mode is available, set DP-3 to 1080p resolution
        swaymsg output DP-3 mode 1920x1080@144.001Hz
        #swaybg -i /home/jiafengyu/Wallpapers/nasa.png -m fill -o DP-3
        swaymsg output DP-3 scale 0.75
        swaymsg output eDP-1 disable
        echo "DP-3 set to 1080p resolution (1920x1080 @ 144.001 Hz)"
    else
        echo "Preferred modes not available. DP-3 remains unchanged."
    fi
else
    echo "DP-3 is not connected."
fi

