#!/bin/sh

set -u
set -e

# Add a console on tty1
if [ -e ${TARGET_DIR}/etc/inittab ]; then
    grep -qE '^tty1::' ${TARGET_DIR}/etc/inittab || \
	sed -i '/GENERIC_SERIAL/a\
tty1::respawn:/sbin/getty -L  tty1 0 vt100 # HDMI console' ${TARGET_DIR}/etc/inittab
fi
cp package/busybox/S10mdev ${TARGET_DIR}/etc/init.d/S10mdev
chmod 755 ${TARGET_DIR}/etc/init.d/S10mdev
cp package/busybox/mdev.conf ${TARGET_DIR}/etc/mdev.conf
cp ../base_external/interfaces ${TARGET_DIR}/etc/network/interfaces
cp ../base_external/wpa_supplicant.conf ${TARGET_DIR}/etc/wpa_supplicant.conf
cp ../base_external/spiOverlay.dtbo ${TARGET_DIR}/../images/rpi-firmware/overlays/spiOverlay.dtbo
