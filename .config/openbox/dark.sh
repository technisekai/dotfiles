#!/bin/sh

# GTK Theme
sed -i 's/mydeepin-white/Dark-Olympic/g' ~/.config/gtk-3.0/settings.ini
sed -i 's/Papirus-Light/Papirus-Dark/g' ~/.config/gtk-3.0/settings.ini
xsettingsd &> /dev/null &
sleep 3s && killall xsettingsd &

#dunst
killall dunst
sed -i 's/#ffffff/#112744/g' ~/.config/dunst/dunstrc
sed -i 's/#27517e/#93a1a1/g' ~/.config/dunst/dunstrc
sed -i 's/light/dark/g' ~/.config/dunst/dunstrc

#stop tint2 service
killall tint2

#change icon tint2
sed -i 's/light-icon-blue/dark-icon-pink/g' ~/.config/tint2/pipe-menu/temperature.sh
sed -i 's/light-icon-blue/dark-icon-pink/g' ~/.config/tint2/pipe-menu/volume-icon.sh

#panel
tint2 -c ~/.config/tint2/dark-panel.tint2rc &

#background
feh --bg-scale ~/Pictures/anime_dark.jpeg 

#change openbox theme
rm -rf ~/.themes/main-theme/openbox-3
cp -r ~/.themes/dark/openbox-3 ~/.themes/main-theme/

#reconfigure openbox
openbox --reconfigure
