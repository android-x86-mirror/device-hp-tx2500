#!/system/bin/sh

modprobe wacom
alsa_amixer -q set Master 100
