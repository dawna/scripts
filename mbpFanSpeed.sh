#! /bin/bash
# manually change the fanspeed on a macbook pro 5,5
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
if [ "$#" -ne 1 ]; then
    echo "Needs speed arg where 0<speed<9000"
    exit 1
fi
su -c 'echo 1 > /sys/devices/platform/applesmc.768/fan1_manual'
su -c "echo $1 > /sys/devices/platform/applesmc.768/fan1_output"
exit 0
