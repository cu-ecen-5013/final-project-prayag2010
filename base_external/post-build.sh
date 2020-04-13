#!/bin/sh

set -u
set -e

# Add a console on tty1
if [ -e ${TARGET_DIR}/etc/inittab ]; then
    grep -qE '^tty1::' ${TARGET_DIR}/etc/inittab || \
	sed -i '/GENERIC_SERIAL/a\
tty1::respawn:/sbin/getty -L  tty1 0 vt100 # HDMI console' ${TARGET_DIR}/etc/inittab
fi
cp /home/sharan/Documents/aesd-project/buildroot-assignments-base/base_external/interfaces ${TARGET_DIR}/etc/network/interfaces
cp /home/sharan/Documents/aesd-project/buildroot-assignments-base/base_external/wpa_supplicant.conf ${TARGET_DIR}/etc/wpa_supplicant.conf



