#!/usr/bin/env bash

case $BLOCK_BUTTON in
1) pactl set-sink-mute @DEFAULT_SINK@ toggle ;;
3) st -e "$EDITOR" "$0" ;;
4) pactl set-sink-volume @DEFAULT_SINK@ +2% ;;
5) pactl set-sink-volume @DEFAULT_SINK@ -2% ;;
esac

vol="$(pamixer --get-volume)"
printf "%s%%" "$vol"
