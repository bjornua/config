#!/bin/sh
declare -x PATH="/home/bjorn/bin:$PATH"
autoscreen
numlockx on
. .fehbg
pulseaudio --start --log-target=syslog
urxvtd -q -f -o
xcompmgr &
xsetroot -cursor_name left_ptr
exec ssh-agent xmonad
