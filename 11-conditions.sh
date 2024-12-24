#!/bin/bash

echo "Please enter a number:: "
read NUM1
if [ $NUM1 -gt 10 ]
then
    echo "$NUM1 is greater than 10"
else
    echo "$NUM1 is less than 10"
fi

# -gt=greater than, -lt=less than, -ge=greater than equal to, -le=less than equal to, -eq=equality check
# -ne= inequality check, &&= logical AND, $0= Argument 0 i.e. the command that’s used to run the script
# $1= First argument (change number to access further arguments)