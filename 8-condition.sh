#!/bin/bash

Number=$1
CmpareValue=50

if [ $Number -ge $CmpareValue ]
then
echo "$Number is greater than $CmpareValue"
else
echo "$Number is less than $CmpareValue"
fi