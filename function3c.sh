read -p "Enter a number:" number

sum=0
reminder=0
temp=$number
result=1

while [ $number -gt 0 ]
do
   reminder=$(($number%10))
   sum=$((($sum*10)+$reminder))
   number=$(($number/10))
done

if [ $temp -eq $sum ]
then
    echo "It is a Palindrome"
else
  echo "It is not a palindrome"
fi

for(( counter=2; counter<$temp; counter++ ))
do
    if [ $(($temp%$counter))  -eq 0 ]
    then
    result=$(($result+1))
    fi
done

if [ $result -eq 1 ]
then
   echo "and it is a Prime number"
else
   echo "and not a  prime number "
fi
