#!/bin/bash

# You can call this script like this:
# $./brightness.sh up
# $./brightness.sh down

val=$(brightnessctl get)
perc=$((val*100/255))

function send_notification {
    val=$(brightnessctl get)
	perc=$((val*100/255))
    # bar=$(seq -s "─" $(($perc / 5)) | sed 's/[0-9]//g')
    # Send the notification
    dunstify -i brightness -r 2593 -u normal "Brightness $perc%"
}

case $1 in
    up)
    brightnessctl set +2%
	send_notification
	;;
    down)
    brightnessctl set 2%-
	send_notification
	;;
esac

