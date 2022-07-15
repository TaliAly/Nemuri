#!/bin/bash
printf "Installing Yay bin \n"

pacman -Suy --needed --noconfirm git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ../
rm -rf yay-bin/

notify-send "Done!" || printf "Done! \n";
