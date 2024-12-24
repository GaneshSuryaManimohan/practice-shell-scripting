#!/bin/bash

USERID=$(id -u)
TIME_STAMP=$(date +%F-%H:%M:%S)
SCRIPT_NAME=$(echo $0 |cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log
echo "Script start-time is:: $TIME_STAMP"
R=\e[31m
G=\e[32m
N=\e[0m

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2.....$R FAILURE $N"
        exit 1
    else
        echo -e "$2.....$G SUCCESS $N"
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

dnf install dockeer -y &>>$LOG_FILE
VALIDATE $? "Installing Docker"


## Color Codes ##
# To enable the color codes we need to give -e option after echo
# # \e[31m is for red color
# \e[32m is for green color
# \e33m is for yellow color
# \e[34m is for blue color
# \e[0m is for normal color