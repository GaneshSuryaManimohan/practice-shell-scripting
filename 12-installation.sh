#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script as a root user"
    exit 2
else
    echo "Running this script as a root user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of MySQL.....FAILED"
    exit 1
else
    echo "Installation of MySQL.....SUCCESS"
fi

dnf install git -y
if [ $? -ne 0 ]
then
    echo "Installation of GIT.....FAILED"
    exit 1
else
    echo "Installation of GIT.....SUCCESS"
fi