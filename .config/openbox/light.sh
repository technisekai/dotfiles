#stop tint2 service
killall tint2

#panel
tint2 -c ~/.config/tint2/light-panel.tint2rc &

#background
feh --bg-scale ~/Pictures/anime_light.jpeg &
