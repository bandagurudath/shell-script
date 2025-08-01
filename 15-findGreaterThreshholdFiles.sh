#!/bin/bash

Storage=$(df -hT)
Current_Usage=$(df -hT | grep xfs | awk -F " " '{print $6F}' | cut -d "%" -f1)
FIle_Name=$(df -hT | grep xfs | awk -F " " '{print $NF}')
Threshold_Storage=30

while IFS= read -r line
do
if [ $Current_Usage -gt $Threshold_Storage ]
then
echo "path storage $FIle_Name has exceeded $Threshold_Storage"
fi
done <<< $Storage
