#!/bin/sh

speed=$(sensors | grep fan1 | cut -d " " -f 9)
	if [ "speed" = "" ]; then
		speed=0
	else
		if [[ "speed" = "65535" ]]; then
		speed=0
	fi
	fi
echo $speed RPM
