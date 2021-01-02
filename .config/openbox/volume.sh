#!/bin/bash

# You can call this script like this:
# $./volume.sh up
# $./volume.sh down
# $./volume.sh mute

function get_volume {
    amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mute {
    amixer get Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

function send_notification {
    volume=`get_volume`
    # bar=$(seq -s "─" $(($volume / 5)) | sed 's/[0-9]//g')
    # Send the notification
    dunstify -i audio_on -r 2593 -u normal "Audio $volume%"
}

case $1 in
    up)
	# Set the volume on (if it was muted)
	amixer -q set Master on > /dev/null
	# Up the volume (+ 5%)
	amixer -q set Master 5%+ > /dev/null
	send_notification
	;;
    down)
	amixer -q set Master 5%- > /dev/null
	send_notification
	;;
    mute)
    	# Toggle mute
	amixer set Master toggle > /dev/null
	if is_mute ; then
	    dunstify -i audio_mute -r 2593 -u normal "Mute"
	else
	    send_notification
	fi
	;;
esac
