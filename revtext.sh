#!/bin/bash
echo "Enter the file name"
read file
count=` cat $file | wc -l`
while [ $count -ge 1 ]
do
x=`head -${count} $file | tail -1` 
count=`expr $count - 1`
echo "$x"
done
