#!/bin/sh

# This script display an appropriate volume icon according to the volume level

# Dependencies: `alsa-utils`
isOn=$(amixer sget Master | grep '\[on' | cut -d '[' -f 4)

if [[ "$isOn" = 'on]' ]]; then
  echo ~/.config/tint2/dark-icon-pink/audio_on.png
  #echo $(amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1)"%"

else
  echo ~/.config/tint2/dark-icon-pink/audio_mute.png
  #echo "Mute"
fi
