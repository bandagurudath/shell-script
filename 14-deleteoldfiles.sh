#!/bin/bash
path=/tmm/

if [ -d $path ]
then
echo "souce dir exixst"
else
echo "source dire not exists"
fi

Storage_Path=/tmp/
Files=$(find $Storage_Path -name "*.log" -mtime +14)

while IFS= read -r line
do
echo "deleting file : $line"
rm -rf $line 
done <<< $Files