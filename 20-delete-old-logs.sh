#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

SOURCE_DIR=/tmp/apps-logs

if [ -d $SOURCE_DIR ]
then
    echo -e "$G The directory exists $N"
else
    echo -e "$R $SOURCE_DIR Directory doesn't exist $N"
fi