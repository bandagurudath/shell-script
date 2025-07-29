#!/bin/bash
echo "Print the current script name: $0"
echo "Pint all the variable given during runtime: $@"
echo "Print the number of arguments given during runtime: $#"
echo "print the process id of current script: $$"
echo "print the hostname: $HOSTNAME"
echo "Print present working directory: $PWD"
echo "Print the user who is running this script $USER"
echo "Print the home directory of this user: $HOME"
sleep 60 &
echo "Print the process of last background process : $!"