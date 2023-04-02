#!/bin/bash

[ $1 = 'lower' ] && amixer -D pulse sset Capture 5%-
[ $1 = 'raise' ] && amixer -D pulse sset Capture 5%+
[ $1 = 'toggle' ] && amixer -D pulse sset Capture toggle

# refresh i3blocks
pkill -SIGRTMIN+10 i3blocks
