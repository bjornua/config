#!/bin/sh
declare -x PATH="/home/bjorn/bin:$PATH"
autoscreen 
numlockx on &
[ -f .fehbg ] && source .fehbg &
[ -f .jackdrc ] && source .jackdrc &
urxvtd -q -f -o &
xcompmgr &
xsetroot -cursor_name left_ptr &
exec ssh-agent xmonad
