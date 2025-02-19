#!/usr/bin/env bash

lower_bound=10
upper_bound=70

status=$(cat /sys/class/power_supply/BAT0/status)

if [[ "$status" == 'Charging' ]] && [[ $(cat /sys/class/power_supply/BAT0/capacity) -gt $upper_bound ]]; then
  notify-send 'unplug the laptop' -t 10000
elif
  [[ "$status" == 'Discharging' ]] && [[ $(cat /sys/class/power_supply/BAT0/capacity) -lt $lower_bound ]]
then notify-send 'plug the laptop' -t 10000; fi
