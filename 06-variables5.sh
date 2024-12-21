#!/bin/bash

echo "Please enter your username:: "
read USERNAME #here USERNAME is a variable, and read command allows you to enter a username on terminal
echo "Please enter you password:: "
read -s PASSWORD  #here the password you enter will not be displayed on the terminal
echo "The username is: $USERNAME and the password is: $PASSWORD" #here you will get the password you entered just for our verification purpose