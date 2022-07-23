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

sway -d

notify-send "Hey!, this is done" || echo "Hey!, this is done"