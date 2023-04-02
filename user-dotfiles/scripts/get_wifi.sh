#!/bin/sh

network=$(nmcli -t dev wifi | grep '*')
ssid=$(echo $network | cut -d ':' -f 8)
percentage=$(echo $network | cut -d ':' -f 12)

#[[ $percentage -ge 75 ]] && icon=""
#[[ $percentage -gt 30 && $percentage -lt 75 ]] && icon=""
#[[ $percentage -le 30 ]] && icon=""

[[ network ]] && echo "  $ssid $percentage%"
