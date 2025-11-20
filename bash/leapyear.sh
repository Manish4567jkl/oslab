#!/bin/bash
read y
if (( (y%400==0) || (y%4==0 && y%100!=0) ))
then
  echo "Leap Year"
else
  echo "Not Leap"
fi
