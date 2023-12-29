#!/bin/bash
echo "Enter the string"
read string
x=`echo "$string" | rev`
if [ $string == $x ]
then 
	echo "$string is a pallindrome"
else
	echo "$string is not a pallindrome"
fi

