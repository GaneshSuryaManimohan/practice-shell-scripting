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

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +2)
#echo -e "Files older than 2days in $SOURCE_DIR are:: $Y $FILES $N "

while IFS= read -r line #IFS is Internal Field Separator
do
    echo -e "Compressing files: $Y $line $N"
    gzip -f $line
done <<< $FILES

COMPRSD_FILES=$(find $SOURCE_DIR -name "*.gz")
#echo -e "Moving the compressed files $G $COMPRSD_FILES $N to /home/ec2-user/test"
if [ -z "$COMPRSD_FILES" ]; 
then
    echo -e "$Y No .gz files found to move $N"
else
    echo -e "Moving the compressed files to /home/ec2-user/test"
    mv "$SOURCE_DIR"/*.gz /home/ec2-user/test
fi

#To find the files older than 2days in current directory:
# find . -name "*.log" -mtime +2