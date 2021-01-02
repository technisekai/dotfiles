#!/bin/sh

# GTK Theme
sed -i 's/Dark-Olympic/mydeepin-white/g' ~/.config/gtk-3.0/settings.ini
sed -i 's/Papirus-Dark/Papirus-Light/g' ~/.config/gtk-3.0/settings.ini
xsettingsd &> /dev/null &
sleep 3s && killall xsettingsd &

#dunst
killall dunst
sed -i 's/#112744/#ffffff/g' ~/.config/dunst/dunstrc
sed -i 's/#93a1a1/#27517e/g' ~/.config/dunst/dunstrc
sed -i 's/dark/light/g' ~/.config/dunst/dunstrc

#stop tint2 service
killall tint2

#change icon tint2
sed -i 's/dark-icon-pink/light-icon-blue/g' ~/.config/tint2/pipe-menu/temperature.sh
sed -i 's/dark-icon-pink/light-icon-blue/g' ~/.config/tint2/pipe-menu/volume-icon.sh

#panel
tint2 -c ~/.config/tint2/light-panel.tint2rc &

#background
feh --bg-scale ~/Pictures/anime_light.jpeg &

#change openbox theme
rm -rf ~/.themes/main-theme/openbox-3
cp -r ~/.themes/light/openbox-3 ~/.themes/main-theme/

#reconfigure openbox
openbox --reconfigure
