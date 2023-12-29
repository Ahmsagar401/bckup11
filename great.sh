#!/bin/bash
echo "Enter the 3 numbers"
read a
read b
read c
if [ $a -ge $b ] 
then
	n1=$a
else
	n1=$b
fi
if [ $n1 -ge $c ]
then
	echo "$n1 is greater than rest two"
else
	echo "$c is greater than rest two"
fi
