#!/bin/bang

echo "Print current script name: $0"
echo "Print all the arguments given: $@"
echo "Print number of arguments given: $#"
echo "Print presnt scrip process id: $$"
sleep 10 &
echo "Print last command staus:$?" 
echo "Print last background process id:$!"
echo "Print Hostname:$HOSTNAME"
echo "Print present working Directory:$PWD"
echo "Print Username running the script:$USER"
echo "print Home DIrectory of the current user:$HOME"