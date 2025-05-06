#!/bin/bash

# Path to the sound file
# SOUND_FILE="fn.mp3"
SOUND_FILE="nice_alarm.mp3"

# Function to play the sound with reduced volume
play_sound() {
  if command -v cvlc &> /dev/null; then
    cvlc --gain 0.05 --play-and-exit "$SOUND_FILE" &
  else
    echo "No suitable sound player found. Install cvlc."
    exit 1
  fi
}

# Function to spawn a new terminal, echo a message, and close it after 30 seconds
spawn_terminal() {
  alacritty -e bash -c "echo '20-20-20 rule: Look away for 20 seconds ma brotha'; sleep 30" &
}

# Main loop to play sound every 20 minutes
while true; do
  # Wait for 20 minutes (1200 seconds)
  sleep 1000
  spawn_terminal
  play_sound
done
