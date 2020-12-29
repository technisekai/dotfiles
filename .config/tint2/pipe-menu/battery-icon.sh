#!/bin/sh

# This script display an appropriate volume icon according to the volume level

# Authors: Piotr Miller, @natemaia
# e-mail: nwg.piotr@gmail.com
# Website: http://nwg.pl
# Project: https://github.com/nwg-piotr/tint2-executors
# License: GPL3

# Dependencies: `alsa-utils`
status=$(acpi -b | grep ':' | head -n 4 | cut -d ':' -f 2 | cut -d ',' -f 1)
bat=$(acpi -b | grep '%' | head -n 4 | cut -d ',' -f 2 | cut -d '%' -f 1)
pSta=$(echo $status)
pBat=$(echo $bat)

if [[ $pSta = 'Full' ]]; then
  #echo ~/.config/tint2/icon/bat-full-charging.svg
  echo ~/.config/tint2/icon-pink/battery-full.png
  echo $status

elif [[ $pSta = 'Charging' ]]; then
  #echo ~/.config/tint2/icon/bat-empty-charging.svg
  echo ~/.config/tint2/icon-pink/battery-charging.png
  echo $bat

else
  #echo ~/.config/tint2/icon/bat-half.svg
  echo ~/.config/tint2/icon-pink/battery-full-notcharged.png
  echo $status
fi
