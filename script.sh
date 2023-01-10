#!/usr/bin/bash
# To list all the component versions currently installed

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
fi

echo "Checking for MsSQL installation"
if sudo systemctl status mssql-server
then
    echo MsSQL is installed
fi



