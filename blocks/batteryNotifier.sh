#!/usr/bin/env bash

lower_bound=10
upper_bound=70

[[ $(cat /sys/class/power_supply/BAT0/status) == 'Charging' ]] && [[ $(cat /sys/class/power_supply/BAT0/capacity) -gt upper_bound ]] && notify-send 'unplug the laptop' -t 10000 ||
  [[ $(cat /sys/class/power_supply/BAT0/status) == 'Discharging' ]] && [[ $(cat /sys/class/power_supply/BAT0/capacity) -lt lower_bound ]] && notify-send 'plug the laptop' -t 10000
