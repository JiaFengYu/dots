#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
#polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown
polybar example >>  /tmp/polybar1.log 2>&1 &

echo "Polybar launched..."
