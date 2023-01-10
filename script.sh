#!/usr/bin/bash
# To list all the component versions currently installed

# Check for angular, node, typescript, git, MsSQL instalation 
green='\e[1;32m' # ANSI code for green text
brown='\e[0;33m' # ANSI code for brown text
reset='\033[0m' # ANSI code for reset text color

for cmd in ng node tsc git 'sudo systemctl status mssql-server'; do
    echo -e "${reset}Checking for ${cmd} installation" # print message checking command installation
    if command -v ${cmd} >/dev/null 2>&1 ;
    then
        echo -e "${brown}--------------------------------"
        echo -e "${green}${cmd} is installed!"
        echo -e "${brown}--------------------------------"
    else
        echo -e "${brown} ${cmd} is not installed!"
    fi
done
