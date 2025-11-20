#!/bin/bash
read ch
case $ch in
  a|e|i|o|u|A|E|I|O|U) echo "Vowel" ;;
  *) echo "Not Vowel" ;;
esac
