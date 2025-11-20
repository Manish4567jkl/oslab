#!/bin/bash
read m
if [ $m -ge 90 ]; then echo "A"
elif [ $m -ge 80 ]; then echo "B"
elif [ $m -ge 70 ]; then echo "C"
else echo "Fail"
fi
