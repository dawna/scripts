#!/bin/bash
# Keyboard backlight brightness for ux301LA
if [ "$#" == "0" ]
	then
		echo "needs an argument"
		exit
fi
if [ "$(whoami)" != "root" ]
	then
		echo "gotta be root"
		exit
fi

echo $1 | tee /sys/class/leds/asus\:\:kbd_backlight/brightness 

exit
