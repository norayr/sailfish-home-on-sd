#!/bin/bash

ACTION=$1
device0="/dev/mmcblk1p1" 
if [ -b "$device0" ]
then
if [ "$ACTION" = "add" ]; then
  mount /dev/mmcblk1p1 /mnt/sd
  mount -o bind /mnt/sd/.home /home/nemo
  mount -o bind /mnt/sd/.android /data/sdcard
else
  umount /data/sdcard
  umount /home/nemo
  umount /mnt/sd
fi
fi
