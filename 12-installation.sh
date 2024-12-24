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

#Disadvantages:: 
#1. In shell scripting the script will not stop even if an error occurs, it is user responsibility to check the previous command is success or not, hence we used the exit status to stop the script from running if there is an error. Only if the exit status is 0 the script will run else it will stop.

#2. In this type code is for every dnf installation, we're creating duplication of if else statements. This can be avoided using functions.