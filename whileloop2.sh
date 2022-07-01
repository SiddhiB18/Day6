echo "Think of a number between 1 to 100"
lowerNo=1
upperNo=100
t=0
while [ $t -lt 1 ]
do
middle=$(($((upperNo+lowerNo))/2))
echo "Is your number greater than $middle: yes or no" 
read result
if [ "$result" = "yes" ]
then
if [ $((lowerNo+1)) -eq $upperNo ]
then
t=1
fi
lowerNo=$middle
else
if [ $((lowerNo+1)) -eq $upperNo ]
then
t=2
fi
upperNo=$middle
fi
done
if [ $t -eq 2 ]
then
echo $lowerNo
else
echo $upperNo
fi
