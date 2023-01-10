#!/usr/bin/bash
# To list all the component versions currently installed
# npm list -global --depth 0

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi


green='\e[1;32m'
brown='\e[0;33m'
reset='\033[0m'

echo -e "${reset}Checking for angular instalation!"

if ng v | grep "Angular CLI:"
then
    echo -e "${brown}--------------------------------"
    echo -e "${green}anglar is installed!"
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
    
    echo -e "${green}typescript is installed!"
    echo -e "${brown}--------------------------------"
fi

echo -e "${reset}Checking for Git installation"
if git --version
then
    
    echo -e "${green}git is installed!"
    echo -e "${brown}--------------------------------"
else 
    apt install git
fi

echo -e "${reset}Checking for MsSQL installation"
if systemctl status mssql-server | grep "Active"
then

    echo -e "${green}MsSQL is installed!"
    echo -e "${brown}--------------------------------"
fi



