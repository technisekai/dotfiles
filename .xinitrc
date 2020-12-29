DEFAULTSESSION=openbox-session

case "$1" in 
	openbox) exec openbox-session ;;
	*) exec $DEFAULTSESSION ;;
esac
