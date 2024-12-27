#!/bin/bash

#In this script we are calling other-script.sh
COURSE="DevOps with AWS"

echo "Before calling the other script, course:: $COURSE"
echo "Process ID of the current shell script: $$"

sh /18-other-script.sh

echo "After calling other script, course:: $COURSE"
