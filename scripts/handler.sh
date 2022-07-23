#!/bin/bash
# every question should have a handler, right?

# How does it works?
# ** Handler OS file.sh

red=$(tput setaf 1)
normal=$(tput sgr0)

Handler() {

    if [ "$2" = "exit" ]
        then
            printf "Goodbye!"
            sleep 1
            exit

    elif [ -f "$1/$2.sh" ]
        then
            sh "$1/$2.sh"

    else
        printf "${red}try that again \n${normal}"
        sleep 1
        clear
        Main
    fi
}