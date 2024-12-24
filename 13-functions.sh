#!/bin/bash

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2.....FAILURE"
        exit 1
    else
        echo "$2.....SUCCESS"
    fi
}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script as a root user"
    exit 1
else
    echo "Running this script as a root user"
fi

dnf install mysql -y
VALIDATE $? "Installing MYSQL"

dnf install git -y
VALIDATE $? "Installing GIT"