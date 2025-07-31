#!/bin/bash

userID=$(id -u)

if [ $userID -ne 0 ]
then
    echo "Run with Super user"
    exit 1
else
    echo "Your are super user"
fi

dnf install nginx -y

if [ $? -ne 0 ]
then 
    echo "Nginx installion Failure"
else
    echo "Nginx installion Success"
fi

systemctl enable nginx

if [ $? -ne 0 ]
then 
    echo "Nginx enable Failure"
else
    echo "Nginx enable Success"
fi

systemctl start nginx

if [ $? -ne 0 ]
then 
    echo "Nginx start Failure"
else
    echo "Nginx start Success"
fi