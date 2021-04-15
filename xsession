#!/bin/sh

export ENV=$HOME/.kshrc

# Simple config
xsetroot -solid black
xset -b
xset s off
xbacklight -set 100
setxkbmap us_qwerty-fr

# Applications run at startup
xclock -geometry 100x100-1+1 &
xterm -geometry 80x24 &
xidle -delay 5 -sw -program "/usr/X11R6/bin/xlock -mode bat" -timeout 300 &
command -v xbanish && xbanish &
command -v xbattbar && xbattbar -i white -o black right &
command -v xdimmer && xdimmer -k &

# Enable middle button on ThinkPads
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# Handle my ssh agent need
rm -f $HOME/.ssh/agent.sock
eval `ssh-agent -s -a $HOME/.ssh/agent.sock`
echo export SSH_AUTH_SOCK="$SSH_AUTH_SOCK" > .kshenv.ssh
echo export SSH_AGENT_PID="$SSH_AGENT_PID" >> .kshenv.ssh

/usr/X11R6/bin/cwm
