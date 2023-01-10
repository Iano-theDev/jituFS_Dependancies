#!/usr/bin/bash
# To list all the component versions currently installed

<<<<<<< HEAD:install.sh
# npm list -global --depth 0

---------------------------------------------
# check for angular instalation 
green='\e[1;32m'
brown='\e[0;33m'
reset='\033[0m'

echo -e "${reset}Checking for angular instalation!"

if ng v
then
    echo -e "${brown}--------------------------------"
    echo -e "${green}anglar is installed!"
    echo -e "${brown}--------------------------------"
else

fi

echo -e "${reset}Checking for node installation"
if node --version
then
    echo -e "${brown}--------------------------------"
    echo -e "${green}node is installed!"
    echo -e "${brown}--------------------------------"
fi

echo -e "${reset}Checking for typescript installation"
if tsc --v
then
    echo -e "${brown}--------------------------------"
    echo -e "${green}typescript is installed!"
    echo -e "${brown}--------------------------------"
fi

echo -e "${reset}Checking for Git installation"
if git --version
then
    echo -e "${brown}--------------------------------"
    echo -e "${green}git is installed!"
    echo -e "${brown}--------------------------------"
else 
    apt install git
fi

echo "Checking for MsSQL installation"
if sudo systemctl status mssql-server
then
    echo MsSQL is installed
fi



=======
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
>>>>>>> origin/elvis:script.sh
