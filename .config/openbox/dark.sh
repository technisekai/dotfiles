#stop tint2 service
killall tint2

#panel
tint2 -c ~/.config/tint2/dark-panel.tint2rc &

#background
feh --bg-scale ~/Pictures/anime_dark.jpeg &
