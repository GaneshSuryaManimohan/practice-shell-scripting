#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

SOURCE_DIR=/tmp/app-logs

if [ -d $SOURCE_DIR ] #this will check if the directory exists or not
then
    echo -e "$G The directory exists $N"
else
    echo -e "$R $SOURCE_DIR Directory doesn't exist $N"
fi

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)
echo "$Y Files older than 14days:: $N"

#To find the files older than 14days in current directory:
# find . -name "*.log" -mtime +14