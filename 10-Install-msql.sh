#!/bin/bash

USESRID=$(id -u)

if [ $USESRID -ne 0 ]
then
echo "You are not a super user"
exit 1
else
echo "You are a super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
echo "Installation failed"
exit 1
else
echo "Installation PAssed"
fi