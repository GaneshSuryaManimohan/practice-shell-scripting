#!/bin/bash

echo "All Variables:: $@" #variables should be passed externally
echo "Number of variables passed:: $#"
echo "Script Name:: $0"
echo "Current working directory:: $PWD"
echo "home directory of current user:: $HOME"
echo "which user is running the script: $USER"
echo "Hostname:: $HOSTNAME"
echo "Process ID of the current shell script: $$"
echo "Process ID of last background command:: $!"
sleep 60
