#!/bin/bash

echo "Please enter your username:: "
read USERNAME #here USERNAME is a variable, and read command allows you to enter a username on terminal
echo "Please enter you password:: "
read PASSWORD
echo "The username is: $USERNAME and the password is: $PASSWORD"

### OUTPUT ###
#sh 05-variables4.sh
#Please enter your username::
#surya
#Please enter you password::
#surya242
#The username is: surya and the password is: surya242

#NOTE: Here the problem is the username and password will be visible on the terminal, we can overcome this by adding -s after read command, refer 06-variables5.sh