#!/bin/bash

USERID=$(id -u)
TIME_STAMP=$(date +%F-%H:%M:%S)
SCRIPT_NAME=$(echo $0 |cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log


VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2.....\e[31m FAILURE \e[0m"
        exit 1
    else
        echo -e "$2.....\e[32m SUCCESS \e[0m"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script as a root user"
    exit 1
else
    echo "Running this script as a root user"
fi

dnf install mysql -y &>>$LOG_FILE
VALIDATE $? "Installing MYSQL"

dnf install git -y &>>$LOG_FILE
VALIDATE $? "Installing GIT"


## Color Codes ##
# To enable the color codes we need to give -e option after echo
# # \e[31m is for red color
# \e[32m is for green color
# \e33m is for yellow color
# \e[34m is for blue color
# \e[0m is for normal color