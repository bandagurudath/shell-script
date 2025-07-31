#!/bin/bash

userID=$(id -u)
Script_name=$(echo $0 | cut -d "." -f1)
Time_stamp=$(date +%F-%H-%M-%S)
Log_File=/tmp/$Script_name-$Time_stamp.log

validate (){

if [ $1 -ne 0 ]
then 
    echo "Nginx $2 Failure"
else
    echo "Nginx $2 Success"
fi

}

if [ $userID -ne 0 ]
then
    echo "Run with Super user"
    exit 1
else
    echo "Your are super user"
fi

dnf install nginx -y &>>$Log_File
validate $? Installtion

systemctl enable nginx &>>$Log_File
validate $? ENable

systemctl start nginx &>>$Log_File
validate $? Start
