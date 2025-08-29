#!/system/bin/sh
# Cria node fake do vibrador para Android 16
mkdir -p /sys/devices/virtual/timed_output/vibrator
mknod /sys/devices/virtual/timed_output/vibrator/enable c 1 7
chmod 0666 /sys/devices/virtual/timed_output/vibrator/enable
