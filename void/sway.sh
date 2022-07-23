#!/bin/bash
# -*- ENCODING: UTF-8 -*-

alias ins="sudo xbps-install -S"

sudo xbps-install -Suy # updating the system

ins dbus-elogind polkit elogind mesa-dri dbus-elogind gfvs # the essencial yk?

# ! very important, this links the services!
sudo ln -s /etc/sv/dbus /var/service/
sudo ln -s /etc/sv/polkit /var/service
sudo sv down acpid
sudo rm /var/service/acpid


ins void-repo-multilib-nonfree void-repo-nonfree void-repo-multilib # nonfree repos & multilib

ins noto-fonts-emoji font-awesome5 fonts-droid-ttf font-hack-ttf font-firacode xorg-fonts # fonts

ins htop ranger feh neofetch pfetch vim # terminal apps

ins rofi kitty pcmanfm dunst firefox chromium xterm # Desktop apps

ins ffmpegthumbnailer unzip zip unrar # things you would want to have

ins lxappearance papirus-icon-theme breeze-snow-cursor-theme # Personalization

ins sway #Just sway

sway -d


notify-send "Hey!, this is done" || echo "Hey!, this is done"
