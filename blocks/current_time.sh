#!/usr/bin/env bash

case $BLOCK_BUTTON in
1) notify-send "$(calcurse -d1)" -t 3000 ;;
3) st -e "$EDITOR" "$0" ;;
esac

now="$(date '+%Y-%m-%d   %H:%M')"
printf "%s" "$now"
