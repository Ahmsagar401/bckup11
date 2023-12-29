#!/bin/bash
services="jenkins python sshd"
for i in $services
do
        ps -C $i
        if [ $? -ne 0 ]
        then
                echo "$i" >> check
        fi
done
if [ -s check ]
then
        cat check | mail -s "service not working" "ashishhmsagar@gmail.com"
fi
