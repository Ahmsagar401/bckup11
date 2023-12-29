#!/bin/bash
echo "Enter 4 numbers"
read a
read b
read c
read d
if [ $a -gt $b ] && [ $a -gt $c ] && [ $a -gt $d ]
then
	c4=$a
	if [ $b -gt $c ] && [ $b -gt $d ]
	then
		c3=$b
		if [ $c -gt $d ]
		then
			c2=$c && c1=$d
		else
			c2=$d && c1=$c
		fi
	fi
	echo "$c4 $c3 $c2 $c1"
elif [ $b -gt $c] && [ $b -gt $d ] && [ $b -gt $a ]
then 
	c4=$b
	if [ $c -gt $d ] && [ $c -gt $s ]
	then
		c3=$c
		if [ $d -gt $a ]
		then 
			c2=$d && c1=$a
		else
			c2=$a && c1=$d
		fi
	fi
	echo "$c4 $c3 $c2 $c1"
elif [ $c -gt $d] && [ $c -gt $a ] && [ $c -gt $b ]
	then
        c4=$c
        if [ $d -gt $a ] && [ $d -gt $b ]
        then
                c3=$d
                if [ $a -gt $b ]
                then
                        c2=$a && c1=$b
                else
                        c2=$b && c1=$a
                fi
        fi
        echo "$c4 $c3 $c2 $c1"
else 
	c4=$d 
	c3=$a
	c2=$b
	c1=$c
	echo "$c4 $c3 $c2 $c1"
fi

