#!/bin/sh

# This script display an appropriate brightness icon according to the brightness level

# Author: Piotr Miller
# e-mail: nwg.piotr@gmail.com
# Website: http://nwg.pl
# Project: https://github.com/nwg-piotr/tint2-executors
# License: GPL3

# Dependencies: `xbacklight` or `light-git'

# Prefer the `light` package, use `xbacklight` if `light` not found
val=$(brightnessctl get)
perc=$((val*100/255))

#echo ~/.config/tint2/icon/bri-medium.svg
echo ~/.config/tint2/dark-icon-pink/brightness.png
echo "$perc %"
