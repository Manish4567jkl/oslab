#!/bin/bash
i=10
until [ $i -lt 1 ]
do
  echo $i
  i=$((i-1))
done
