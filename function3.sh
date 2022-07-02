function isPrime() {
	prime=1
	counter=2
	while [[ $prime -gt 0 && $counter -le $(($1/2)) ]]
	do
		if [ $(($prime % $counter )) -eq 0 ]
		then 
			prime=0
		fi
		((counter++))
	done
	echo $prime
}

sum=0
remainder=0
function getPalindrome() {

	while [ $number -gt 1 ]
	do
		remainder=$(($number%10))
		sum=$(((sum*10)+$remainder))
		number=$(($number/10))
	done
	echo $sum
}

echo "Enter Number"
read number
prime=$( isPrime $number )
if [ $prime -eq 1 ]
then
	echo number is prime
	palindrome=$( getPalindrome $number )
	palindromePrime=$( isPrime $palindrome )
	if [ $palindromePrime -eq 1 ]
	then 
		echo palindrome is prime
	fi
else
	echo number is not prime
fi
