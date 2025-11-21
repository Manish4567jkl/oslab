read n
orig=$n
rev=0

while [ $n -gt 0 ]
do
    rev=$((rev*10 + n%10))
    n=$((n/10))
done

if [ $rev -eq $orig ]
then
    echo "Palindrome"
else
    echo "Not Palindrome"
fi
