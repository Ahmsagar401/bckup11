#!/bin/bash
echo "Enter the filename to check the age"
read agefile
awk -F " " 'NR>1 {print $0}' agefile > file1
cat file1
while read line
do
	age=` echo "$line" | awk -F " " '{print $2}'`
	name=` echo "$line" | awk -F " " '{print $1}'`
	if [ $age -ge 30 ]
	then
		echo "$name:$age"
	fi
done < file1
