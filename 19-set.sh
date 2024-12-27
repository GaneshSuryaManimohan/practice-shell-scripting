#!/bin/bash

set -e #if there is an error the script will stop running if we use this command in shell scripting

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script as a root user"
    exit 2
else
    echo "Running this script as a root user"
fi

dnf install mysqllala -y
dnf install git -y

echo "is script still proceeding even after error?"