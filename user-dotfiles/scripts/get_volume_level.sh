#!/bin/sh

info=$(amixer -D pulse get Master | grep "Front Left:" | cut -d ' ' -f 7- | tr -d '[%]')
percentage=$(echo $info | cut -d ' ' -f 1)
stat=$(echo $info | cut -d ' ' -f 2)

[[ $percentage -ge 75                        ]] && icon="🔊"
[[ $percentage -ge 50 && $percentage -lt 75  ]] && icon="🔉"
[[ $percentage -gt 0 && $percentage -lt 50   ]]	&& icon="🔈"
[[ $percentage -eq 0                         ]] && icon="🔇"


[[ $stat = "on"  ]] && echo "$icon $percentage%"
[[ $stat = "off" ]] && echo "🔇 muted"
