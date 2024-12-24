#!/bin/bash

echo "please enter $NUM1:: "
read $NUM1
echo "please enter $NUM2:: "
read $NUM2


# NUM1=$1
# NUM2=$2

SUM=$(($NUM1+$NUM2))

echo "Total of $NUM1 and $NUM2 is:: $SUM"