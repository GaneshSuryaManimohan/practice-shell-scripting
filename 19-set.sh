#!/bin/bash

set -e #if there is an error the script will stop running if we use this command in shell scripting

#to identify at which line and which command caused the error, we can use below trap command with a failure function:

failure(){
    echo "Failed at $1::$2"
}
trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

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


#output: As we gave wrong package name mysqllala the script exited without proceeding to next step
# sudo sh 19-set.sh
# Running this script as a root user
# Last metadata expiration check: 0:01:45 ago on Fri Dec 27 09:51:28 2024.
# No match for argument: mysqllala
# Error: Unable to find a match: mysqllala
