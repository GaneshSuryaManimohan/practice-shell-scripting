#!/bin/bash

DISK_USAGE=$(df -hT |grep xfs)
DISK_THRESHOLD=1
MSG=""

while IFS= read -r line
do
    USAGE=$(echo $line | awk '{print $6}' | cut -d "%" -f1 )
    FOLDER=$(echo $line |awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MSG+="$FOLDER usage is greater than $DISK_THRESHOLD, current usage is:: $USAGE" #here MSG+ will append the previous result
    fi
done <<< $DISK_USAGE
echo -e "Message: $MSG"

echo "$MSG" | mail -s "Disk Usage Alert" surya.manimohan@gmail.com 2>> /tmp/mail_error.log