#!/bin/bash

ins=`sudo pacman -S --needed`

sudo pacman -Syu

# main folders
mkdir ~/Downloads
mkdir ~/Pictures
mkdir ~/Videos
mkdir ~/Projects

printf "main folders \n"

ins noto-fonts-emoji ttf-font-awesome ttf-droid ttf-hack # Fonts

ins htop ranger feh neofetch redshift # termnal apps
# yay --needed --noconfirm pfetch # alternative to neofetch

ins rofi picom nitrogen alacritty pcmanfm dunst firefox # Desktop apps
# yay --needed --noconfirm --cleanafter microsoft-edge-stable-bin icu69-bin gnome-keyring

ins ffmpegthumbnailer unzip zip unrar # things you would want to have

printf "and after all of that, installing i3-gaps" sleep 1
ins i3-gaps i3blocks xorg-xinit

printf "this were the packages that were installed so you can know: \n"
printf "${blue}Fonts\n${normal}    noto-fonts-emoji ttf-font-awesome ttf-droid ttf-hack \n"
printf "${blue}Terminal Apps \n${normal}    htop ranger feh neofetch redshift \n"
printf "${blue}Desktop Apps \n${normal}     rofi picom nitrogen alacritty pcmanfm dunst firefox \n"
printf "${blue}Things you want to have \n${normal}      ffmpegthumbnailer unzip zip unrar \n"

notify-send "Hey!, this is done" || echo "Hey!, this is done"
printf "Might wanna get the dotfiles :P \n"
printf "${blue}https://github.com/talialy/dotfiles"