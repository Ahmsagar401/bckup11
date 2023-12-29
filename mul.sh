#!/bin/bash
echo "Enter a number"
read num
i=1
while [ $i -le 10 ]
do
        mul=`expr $num \* $i`
        echo "$num * $i = $mul"
        i=`expr $i + 1`
done
