#!/bin/bash

userID=(id -u)

if [ $userID -eq 0 ]
then
echo "Your are super user"
else
echo "Run with Super user"
fi

dnf install mysql -y
dnf enable msqld
dnf start mysqld