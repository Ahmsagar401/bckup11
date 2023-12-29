#!/bin/bash
echo "Enter the filename"
read file
awk -F " " 'NR>1{print $0}' $file > file1
while read line
do
	a=`echo "$line" | awk -F " " '{print $NF}'`
        if [ $a -gt 25 ]
	then
	b=`echo "$line" | awk -F " " '{print $1}'`	
	echo "$b age is more than 25"
        fi
done < file1	
