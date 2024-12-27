#!/bin/bash

#In this script we are calling other-script.sh
COURSE="DevOps with AWS"

echo "Before calling the other script, course:: $COURSE"
echo "Process ID of the current shell script: $$"

#./18-other-script.sh

#we can also use source command to call the other script

source ./18-other-script.sh

echo "After calling other script, course:: $COURSE"

#Output when ./18-other-script.sh is called from current script
# sh 17-current-script.sh
# Before calling the other script, course:: DevOps with AWS
# Process ID of the current shell script: 1485
# From other script, course:: DevOps+AWS from other script
# PID of other script:: 1486
# After calling other script, course:: DevOps with AWS

#Output when source ./18-other-script.sh is called from current script

