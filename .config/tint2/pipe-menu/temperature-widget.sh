#!/bin/sh

# Display temperature icon. un '#' to see the temperature too.

temperature=$(sensors | grep -A 2 'k10temp-pci-00c3' | grep 'temp1' | head -n 1 | cut -d '+' -f 2 | cut -d '(' -f 1)

#echo ~/.config/tint2/dark-icon-pink/temperature.png
echo ~/.config/tint2/morning-castle-icon/temperature.png
#echo $temperature
