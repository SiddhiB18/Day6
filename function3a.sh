read -p "Enter the number : " number
result=1

for (( i=2; i<$number; i++ ))
do
   if [  $(($number%$i))  -eq 0 ]
   then
      result=$(($result+1))
   fi
done

if [ $result -eq 1 ]
then
   echo "Prime number"
else
   echo "Not a prime number"
fi
