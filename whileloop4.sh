start=100
goal=200
wins=0
bets=0
while [ $start -gt 0 -a $start -lt $goal ]
do
re=$(($RANDOM%2))
if [ $re -eq 1 ]
then
((start++))
((wins++))
else
((start--))
fi
((bets++))
done
echo won $wins times
echo total tried $bets times
