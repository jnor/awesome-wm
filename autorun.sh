#!/usr/bin/env bash

function run {
  if ! pgrep $1 ; then
    $@&
  fi
}

run urxvtd
run picom --config /home/jn/.picom.conf
run redshift-gtk
#run redshift -l '55.7:12.6' -t '5700:3600' -m randr
run nm-applet
run nitrogen --restore --set-scaled
run gnome-keyring-daemon --start

#run caprine #messenger

# geoclue not starting (for redshift)
# (https://github.com/jonls/redshift/issues/636)
run /usr/lib/geoclue-2.0/demos/agent &

#run dbus-launch update-checker
#run light-locker
#run pulseaudio -D
#run compton --shadow-exclude '!focused'
#run xcape -e 'Super_L=Super_L|Shift_L|p'
#run /usr/lib/mate-polkit/polkit-mate-authentication-agent-1
#run thunar --daemon
#run xfce4-power-manager
#run pa-applet
#run xrdb merge ~/.Xresources
#run xfsettingsd
#run urxvtd
