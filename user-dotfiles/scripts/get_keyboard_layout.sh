#!/bin/zsh

layout=$(xkb-switch)

[[ $layout = 'us' ]]  &&  echo  '🇺🇸 EN'
[[ $layout = 'ar' ]]  &&  echo  '🇪🇬 AR'
