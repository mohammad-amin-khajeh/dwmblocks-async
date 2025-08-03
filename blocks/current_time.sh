#!/usr/bin/env dash

case $BLOCK_BUTTON in
1) notify-send "$(calcurse -d1)" -t 3000 ;;
3) st -e "$EDITOR" "$0" ;;
esac

now="$(date '+%Y-%m-%d    %I:%M %p')"
printf "%s" "$now"
