#!/bin/bash

USERID=$(id -u)
TIME_STAMP=$(date +%F-%H:%M:%S)
SCRIPT_NAME=$(echo $0)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIME_STAMP
echo "Script Start-Time is:: $TIME_STAMP"
R="\e[31m"
G="\e[32m"
Y="\e[31m"
N="\e[0m"

for i in $@
do
    echo "Package to Install:: $i"
    dnf list installed $i
done