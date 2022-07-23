#!bin/bash
# just to shorcut all of the questions

blue=$(tput setaf 4)
green=$(tput setaf 2)
normal=$(tput sgr0)


Question() {
    printf "$1 \n"
    printf "${blue}$2 \n"
    read -p "${green}→ " res
    printf "${normal}"
    res=$(echo "$res" | tr '[:upper:]' '[:lower:]')
}
