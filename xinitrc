#!/bin/sh

export ENV=$HOME/.kshrc

xsetroot -solid black &
xset -b
xclock -geometry 50x50-1+1 &
xconsole -iconic &
xterm -geometry 80x24 &
xidle -delay 5 -sw -program "/usr/X11R6/bin/xlock -mode bat" -timeout 300 &
whereis xbattbar && xbattbar -i white -o black right &
/usr/X11R6/bin/cwm || xterm
