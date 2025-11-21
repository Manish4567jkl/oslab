#!/bin/bash

read -p "Enter number: " n

if [ $n -le 1 ]; then
    echo "Not Prime"
    exit
fi

flag=1

for ((i=2; i*i<=n; i++))
do
    if [ $((n % i)) -eq 0 ]
    then
        flag=0
        break
    fi
done

if [ $flag -eq 1 ]
then
    echo "Prime"
else
    echo "Not Prime"
fi
