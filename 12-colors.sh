#!/bin/bash

USESRID=$(id -u)
Script_Name=$(echo $0 | cut -d "." -f1)
Time_Stamp=$(date +%F-%H-%M-%S)
Log_FIle=/tmp/$Script_Name-$Time_Stamp.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

validate(){
if [ $1 -ne 0 ]
then
echo -e "$2 Installation $R failed $N "
exit 1
else
echo -e "$2 Installation $G Passed $N "
fi
}

if [ $USESRID -ne 0 ]
then
echo -e "You are $R not a super user $N "
exit 1
else
echo -e "You are $G a super user $N"
fi


for i in $@
do
dnf list installed $i
if [ $? -eq 0 ]
echo "$i is already installed"
else
dnf install $i -y
validate $? $i
done














dnf install mysql -y &>>$Log_FIle
validate $? mysql

dnf install nodejs -y &>>$Log_FIle
validate $? nodejs