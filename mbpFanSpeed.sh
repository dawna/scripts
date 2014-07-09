#! /bin/bash
# manually change the fanspeed on a macbook pro 5,5
if [ "$#" == "0" ]
   then
   echo "Needs speed arg where 0<speed<9000"
   exit
fi
if [ "$(whoami)" != "root" ]
   then
   echo "gotta be root"
   exit
fi
su -c 'echo 1 > /sys/devices/platform/applesmc.768/fan1_manual'
su -c "echo $1 > /sys/devices/platform/applesmc.768/fan1_output"
exit 0
