#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script as a root user"
else
    echo "Running this script as a root user"
fi

dnf install mysql -y