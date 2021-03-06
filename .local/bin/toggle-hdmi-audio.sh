#!/bin/sh

if [ $# -lt 1 ]
  then user=$USER
  else user=$1
fi

alsaConfigPath="/home/$user/.asoundrc"
primaryGroup=$(id -gn "$user")
[ -f "$alsaConfigPath" ] && rm "$alsaConfigPath" && exit
hdmiPcm=$(aplay --list-devices | sed -n -E 's/^card ([0-9]+).*device ([0-9]+).*HDMI.*$/pcm.!default "hw:\1,\2"/p')
printf "%s" "$hdmiPcm" > "$alsaConfigPath" \
  && chown "$user" "$alsaConfigPath" && chmod 644 "$alsaConfigPath" && chgrp "$primaryGroup" "$alsaConfigPath"
