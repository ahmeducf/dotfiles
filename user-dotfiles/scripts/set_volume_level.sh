#!/bin/bash

arg=$1

info=$(amixer -D pulse get Master | grep "Front Left:" | cut -d ' ' -f 7- | tr -d '[%]')
#!/bin/bash

arg=$1

[ $arg = 'lower' ] && amixer -D pulse sset Master 5%-
[ $arg = 'raise' ] && amixer -D pulse sset Master 5%+
[ $arg = 'toggle' ] && amixer -D pulse sset Master toggle

# refresh i3blocks
pkill -SIGRTMIN+10 i3blocks
