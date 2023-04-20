#!/bin/bash

pkgname=$1

cat << EOM >> /etc/pacman.conf
[archlinuxcn]
Server = https://repo.archlinuxcn.org/x86_64
EOM

sudo chmod a+rw -R ./

sudo pacman-key --init
sudo pacman -Sy --noconfirm && sudo pacman -S --noconfirm archlinuxcn-keyring
sudo pacman -S --noconfirm yay


yay -Ssy --noconfirm --builddir=./ "$pkgname"
