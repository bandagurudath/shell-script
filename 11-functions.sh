#!/bin/bash

USESRID=$(id -u)
Script_Name=$(echo $0 | cut -d "." -f1)
Time_Stamp=$(date +%F-%H-%M-%S)
Log_FIle=/tmp/$Script_Name-$Time_Stamp.log

validate(){
if [ $1 -ne 0 ]
then
echo "$2 Installation failed"
exit 1
else
echo "$2 Installation Passed"
fi
}

if [ $USESRID -ne 0 ]
then
echo "You are not a super user"
exit 1
else
echo "You are a super user"
fi

dnf install mysql -y &>>Log_FIle
validate $? mysql

dnf install nodejs -y &>>Log_FIle
validate $? nodejs