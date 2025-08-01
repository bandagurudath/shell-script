#!/bin/bash

Storage=$(df -hT)

for i in $Storage
do
echo "File size of : $i" 
done