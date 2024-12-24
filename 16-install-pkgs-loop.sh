#!/bin/bash

USERID=$(id -u)
TIME_STAMP=$(date +%F-%H:%M:%S)
SCRIPT_NAME=$(echo $0)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIME_STAMP
R="\e[31m"
G="\e[32m"
Y="\e[31m"
N="\e[0m"
P="\e[35m"
echo "Script Start-Time is:: $TIME_STAMP"

if [ $USERID -ne 0 ]
then
    echo -e "$R Please Run this Script as super User $N"
    else
        echo -e "\e[35m Running the Script as super User $N"
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2.....$R FAILURE $N"
    else
        echo -e "$2.....$G SUCCESS $N"
    fi
}

for i in $@
do
    echo "Package to Install:: $i"
    dnf list installed $i &>>$LOG_FILE
    if [ $? -eq 0 ]
    then
        echo -e "$i is already installed.....$Y SKIPPING $N"
    else
        dnf install $i -y &>>$LOG_FILE
        VALIDATE $? "Installation of $i"
    fi
done