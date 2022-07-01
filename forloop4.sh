read -p "Enter the first number: " first
read -p "Enter the last number: " last

for((i=$first;i<=$last;i++))
do
     if [ $i -eq 1 -o $i -eq 0 ]
     then
     echo "enter a valid number"
     exit 0
     fi

     num=1
     for((j=2;j<=$i/2;j++))
     do
        if [ $((i%j)) -eq 0 ]
        then
        num=0
        fi
     done
     if [ $num -eq 1 ]
     then
          echo $i
     fi
done

