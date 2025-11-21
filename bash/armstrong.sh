#!/bin/bash

read -p "Enter number: " n
num=$n
sum=0

while [ $num -gt 0 ]
do
    digit=$((num % 10))
    sum=$((sum + digit*digit*digit))
    num=$((num / 10))
done

if [ $sum -eq $n ]
then
    echo "Armstrong"
else
    echo "Not Armstrong"
fi
