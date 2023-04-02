#!/bin/zsh

current_layout=$(xkb-switch)

[[ $current_layout = "us" ]] && setxkbmap -layout ar,us -model "pc105" -variant ""
[[ $current_layout = "ar" ]] && setxkbmap -layout us,ar -model "pc105" -variant ""

# refresh i3blocks
pkill -SIGRTMIN+12 i3blocks
