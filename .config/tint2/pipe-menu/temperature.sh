#!/bin/sh

# This script display an appropriate volume icon according to the volume level

# Authors: Piotr Miller, @natemaia
# e-mail: nwg.piotr@gmail.com
# Website: http://nwg.pl
# Project: https://github.com/nwg-piotr/tint2-executors
# License: GPL3

temperature=$(sensors | grep -A 2 'k10temp-pci-00c3' | grep 'temp1' | head -n 1 | cut -d '+' -f 2 | cut -d '(' -f 1)

echo ~/.config/tint2/dark-icon-pink/temperature.png
echo $temperature
