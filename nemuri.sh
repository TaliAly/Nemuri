#!/bin/bash
#   |--------------------------------|
#   |         Nemuri first           |
#   |        Taki was here!          |
#   |--------------------------------|


clear
. scripts/question.sh # Import

Main() {

Question "On which system are you?" "[ Arch ] [ Void ]"

if [ "$res" = "arch" ]
    then
            sh arch/arch.sh

    elif [ "$res" = "void" ]
        then
            sh void/void.sh
    else
        printf "what? I didn't get that \n"
        sleep 1
        clear
        Main
fi

}

Main