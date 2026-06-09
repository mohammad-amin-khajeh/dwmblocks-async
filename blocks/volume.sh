#!/usr/bin/env sh

case $BLOCK_BUTTON in
1) pamixer --toggle-mute ;;
3) st -e "$EDITOR" "$0" ;;
4) pamixer --increase 2 ;;
5) pamixer --decrease 2 ;;
esac

vol="$(pamixer --get-volume)"
is_muted="$(pamixer --get-mute)"
if [ "$is_muted" = 'true' ]; then
  printf "%s  " 
else
  printf "%s  " 
fi
printf "%s%%" "$vol"
