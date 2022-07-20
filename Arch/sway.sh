#!/bin/bash
# -*- ENCODING: UTF-8 -*-
blue=$(tput setaf 4)
normal=$(tput sgr0)

alias ins="sudo pacman -S --needed"

sudo pacman -Suy --noconfirm
ins xorg-minimal --noconfirm


# main folders
mkdir ~/Downloads
mkdir ~/Pictures
mkdir ~/Videos
mkdir ~/Projects

printf "Main folders! \n"

ins noto-fonts-emoji ttf-font-awesome ttf-droid ttf-hack # fonts

ins htop ranger feh neofetch # termnal apps
# yay --needed --noconfirm pfetch # alternative to neofetch

ins rofi alacritty pcmanfm dunst firefox # Desktop apps
# yay --needed --noconfirm microsoft-edge-stable-bin

ins ffmpegthumbnailer unzip zip unrar # things you would want to have

printf "and after all of that, installing sway \n" sleep 1
ins sway swaybg


printf "this were the packages that were installed so you can know: \n"
printf "${blue}Fonts\n${normal}    noto-fonts-emoji ttf-font-awesome ttf-droid ttf-hack \n"
printf "${blue}Terminal Apps \n${normal}    htop ranger feh neofetch \n"
printf "${blue}Desktop Apps \n${normal}     rofi alacritty pcmanfm dunst firefox \n"
printf "${blue}Things you want to have \n${normal}      ffmpegthumbnailer unzip zip unrar \n"

notify-send "Hey!, this is done" || echo "Hey!, this is done"
printf "Might wanna get the dotfiles :P \n"
printf "${blue}https://github.com/talialy/dotfiles"