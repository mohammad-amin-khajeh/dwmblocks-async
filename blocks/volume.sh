#!/usr/bin/env bash
update_vol() {
	vol="$([ "$(pamixer --get-mute)" = "false" ] && printf '  ' || printf '  ')$(pamixer --get-volume)%"
	echo "$vol"
}
update_vol
