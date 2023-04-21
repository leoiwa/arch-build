#!/bin/bash

pkgname=$1

useradd builduser -m
echo "builduser ALL = NOPASSWD: /usr/bin/pacman" > /etc/sudoers.d/builduser-pacman
chmod 440 "/etc/sudoers.d/builduser-pacman"
chown builduser ./
sudo -u builduser yay -G --noconfirm --builddir=./ "$pkgname"
cd $pkgname
sudo -u builduser makepkg -s --noconfirm -L

