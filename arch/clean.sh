# !/bin/bash
# -*- ENCODING: UTF-8 -*-

command -v yay || YAY=no

if [ "$YAY" != "no" ]
    then
        echo "yay was found, so I'll be using yay first and then pacman!"
        sleep 2

        yay -Suy --noconfirm --cleanafter # Update everything
        yay -Yc # Clean unneeded dependencies
        yay -Sc --aur # Clean old pkgbuilds

fi

sudo pacman -Suy --noconfirm # Update pkgs
sudo paccache -r # clean pkg's cache
sudo pacman -Sc
sudo pacman -Rcns $(pacman -Qtdq) --noconfirm # Remove Orphans

echo $(du -sh ~/.cache)
rm -rf ~/.cache/* # remove home cache

find ~ -type d -empty
find ~ -type d -empty -delete # remove empty folders

echo "Arch is clean now!"
notify-send "Arch is clean now!"
