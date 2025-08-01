#!/bin/bash

Storage=$(df -hT)
Threshold_Storage=30

while IFS= read -r line
do
Current_Usage=$(echo $line | grep xfs | awk -F " " '{print $6F}' | cut -d "%" -f1)
FIle_Name=$(echo $line | grep xfs | awk -F " " '{print $NF}')
if [ $Current_Usage -ge $Threshold_Storage ]
then
echo "path storage $FIle_Name has exceeded $Threshold_Storage"
fi
done <<< $Storage
