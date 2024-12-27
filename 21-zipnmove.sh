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
    echo "Compressing files: $line"
    gzip -f $line
done <<< $FILES

COMPRSD_FILES=$(find $SOURCE_DIR -name "*.gz")
echo -e "Moving the compressed files $G $COMPRSD_FILES $N to /home/ec2-user/test"
if [ -z "$COMPRS_FILES" ]; 
then
    echo -e "$Y No files to compress in $COMPRSD_FILES $N"
    exit 0 # Exit if no files were found
else
    mv /tmp/app-logs/*.gz /home/ec2-user/test
fi

#To find the files older than 2days in current directory:
# find . -name "*.log" -mtime +2