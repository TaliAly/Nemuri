#!/bin/bash
# -*- ENCODING: UTF-8 -*-
# Arch Linux!

blue=$(tput setaf 4)
green=$(tput setaf 2)
normal=$(tput sgr0)

clear

Welcome() {
    printf "${blue}Hello! this is Tali! ${normal} \n"
    printf "what do you want to install?\n
        [ Sway ]  [ i3 ] \n
        [ Clean ]  [ Yay ] \n
        [ Exit ] \n"

    read -p "${green}➦ " ANS
    printf "${normal}"
    ANS=$(echo "$ANS" | tr '[:upper:]' '[:lower:]')
    #* 'tr' is kinda weird so this just transforms everything into lower case

    Scripts "$ANS"
}

Scripts() {
    case $1 in

        sway)
            Confirm $ANS
        ;;

        clean)
            Clean
        ;;

        i3)
            Confirm $ANS
        ;;

        test)
            Confirm $ANS
        ;;

        yay)
            Confirm $ANS
        ;;

        exit)
            exit
        ;;

        *)
            printf "${normal}I didn't get that ._.) \n"
            sleep 1
            printf "wanna try again? \n\n"
            sleep 1
            Welcome
        ;;
    esac
}

Confirm() {
    printf "Do you want to install $1? \n
            [ Yes ] [ No ] \n"
    read -p "${green}➦ " res
    printf "${normal}"
    res=$(echo "$res" | tr '[:upper:]' '[:lower:]')

    if [ "$res" = "yes" ]
    then

        sh ./Arch/$1.sh

        elif [ "$res" = "no" ]
        then
            clear
            Welcome

        else
            printf "wut? '-' \n ok, again \n"
            Clean
    fi
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

Welcome
notify-send "Hey!, this is done" || echo "Hey!, this is done"
