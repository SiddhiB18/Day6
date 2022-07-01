read -p "Enter the num : " num
i=1
count=0

while [ $count -le $num ]
do
if [ $i -le 256 ]
then
echo "$i"
i=$((i*2))
fi
((count++))
done
