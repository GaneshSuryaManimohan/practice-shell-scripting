#!/bin/bash

echo "Please enter a number:: "
read NUM1
if[$NUM1 -gt 10]
then
    echo "$NUM1 is greater than 10"
else
    echo "$NUM1 is less than 10"
fi