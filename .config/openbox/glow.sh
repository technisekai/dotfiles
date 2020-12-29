#stop tint2 service
killall tint2

#panel
tint2 -c ~/.config/tint2/glow-panel.tint2rc &

#background
feh --bg-scale ~/Pictures/spider.jpeg
