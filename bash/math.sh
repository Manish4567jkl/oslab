#!/bin/bash
read a
read b

echo "1.Add 2.Sub 3.Mul 4.Div"
read ch

case $ch in
  1) echo $((a+b)) ;;
  2) echo $((a-b)) ;;
  3) echo $((a*b)) ;;
  4) echo $((a/b)) ;;
  *) echo "Invalid" ;;
esac
