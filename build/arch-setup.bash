#!/bin/bash

cat << EOF > /etc/pacman.d/mirrorlist
Server = https://cloudflaremirrors.com/archlinux/\$repo/os/\$arch
Server = https://geo.mirror.pkgbuild.com/\$repo/os/\$arch
EOF
pacman -Sy --noconfirm arch-install-scripts
cp /usr/bin/pacstrap ./build/
cp /usr/bin/arch-chroot ./build/
