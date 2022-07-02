read -p "Enter the first number : " num1 
read -p "Enter the second number : " num2
sum=0
remainder=0
function isPalindrome()
{
while [ $num1 -gt 0 ]
do
remainder=$(($num1%10))
sum=$(((sum*10)+$remainder))
num1=$((num1/10))
done
if [ $num2 -eq $sum ]
then
echo "Palindrome"
else
echo "Not a Palindrome"
fi
}
isPalindrome
