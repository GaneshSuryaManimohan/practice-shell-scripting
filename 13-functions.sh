#!/bin/bash

TIME_STAMP=$(date +%F-%H:%M:%S)
SCRIPT_NAME=$($0 |cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME/$TIME_STAMP


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

dnf install mysql -y &>>$LOG_FILE
VALIDATE $? "Installing MYSQL"

dnf install git -y &>>$LOG_FILE
VALIDATE $? "Installing GIT"