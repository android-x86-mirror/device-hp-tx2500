#!/system/bin/sh

# CPU frequency governor 
# interactive, userspace, powersave, conservative, ondemand, performance
#echo ondemand > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
#echo ondemand > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor

# GPU power method
#echo profile > /sys/class/drm/card0/device/power_method
#echo mid > /sys/class/drm/card0/device/power_profile

modprobe wacom

# Support for Huawei E172 3G adapter
setprop rild.libpath /system/lib/libhuaweigeneric-ril.so
setprop rild.libargs "-d /dev/ttyUSB2 -v /dev/ttyUSB1"
