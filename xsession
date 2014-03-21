#!/bin/sh

xsetroot -solid black &
xset -b
whereis numlockx && numlockx on &
whereis xbattbar && xbattbar -i white -o black right &
whereis xclock && xclock &
setxkbmap us_qwerty-fr
if [ -x /usr/local/bin/dbus-launch -a -z "${DBUS_SESSION_BUS_ADDRESS}" ]; then
	eval `dbus-launch --sh-syntax --exit-with-session`
fi
ENV=$HOME/.kshrc /usr/X11R6/bin/cwm
