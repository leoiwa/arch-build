#!/bin/bash

pkgname=$1

useradd builder -m
echo "builder ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
cd /builder
sudo --set-home -u builder yay -S --noconfirm --builddir=./ "$pkgname"
