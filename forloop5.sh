read -p "Enter the number : " num
n=1
for((i=1;i<=num;i++))
do
n=$((n*i))

done
echo $n
