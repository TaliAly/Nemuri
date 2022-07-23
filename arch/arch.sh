#!/bin/bash
# -*- ENCODING: UTF-8 -*-
# Arch Linux!

blue=$(tput setaf 4)
green=$(tput setaf 2)
normal=$(tput sgr0)


clear
. scripts/question.sh
. scripts/handler.sh

Main() {
    Question "What do you want to do?" "[ Sway ] [ Exit ]" "arch"
    Handler "arch" "$res"
}


Clean() {
    printf "Do you want to install the clean script? \n
            [ Yes ] [ No ] \n"
    read -p "${green}➦ " res
    printf "${normal}"
    res=$(echo "$res" | tr '[:upper:]' '[:lower:]')

    if [ "$res" = "yes" ]
    then

        if [ ! -d ~/.clean ]
        then
            printf "${normal} Creating the folder and pasting the script!"
            mkdir ~/.clean
            cp Arch/clean.sh ~/.clean
            echo "alias clean='sh ~/.clean/clean.sh'" >> ~/.bashrc

            else
                printf "The folder was already there!, Imma just remove it and install it again :P \n"
                rm -rf ~/.clean
                Clean
        fi

        elif [ "$res" = "no" ]
        then
            clear
            Welcome

        else
            printf "wut? '-' \n ok, again \n"
            Clean
    fi
}

Main

notify-send "Hey!, this is done" || echo "Hey!, this is done"
