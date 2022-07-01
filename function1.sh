type=""
temperature=-1;
function getTempInC() {
temp=$(($1 - 32))
temp=$(($temp*5))
temp=$(($temp/9))
echo $temp
}

function getTempInF() {
temp=$(($1*9))
temp=$(($temp/5))
temp=$(($temp+32))
echo $temp
}

echo "Enter temperature unit F or C"
read type
if [[ "$type" = "F" ]]
then
while [[ $temperature -lt 32 || $temperature -gt 212 ]]
do
echo "Enter temp in range of 32 - 212"
read temperature
done
getTempInC $temperature
else
while [[ $temperature -lt 0 || $temperature -gt 100 ]]
do
echo "Enter temp in range of 0 - 100"
read temperature
done
getTempInF $temperature
fi


