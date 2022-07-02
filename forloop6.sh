read -p "Enter a number: " num
echo "The prime factors are"
for(( i = 2; i * i <= num; ))
do
    if(( num % i == 0))
    then
        echo -n "$i "
        ((num /= i))
    else
        ((i += 1))
    fi
done
echo $num
