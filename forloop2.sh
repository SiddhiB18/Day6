read -p "Enter the input : " n
top=0
bottom=1
for((i=1;i<=n;i++))
do
bottom=$(($bottom * i))
done
for((i=1;i<=n;i++))
do
top=$(($(($bottom / i)) + $top))
done
echo "$top / $bottom"


