#!/bin/bash
declare -A dict
echo "Flip coin simulator"

arr=$((RANDOM%2))
if [[ $arr -eq 0 ]]
then
	echo "Head"
else
	echo "Tails"
fi

echo "Enter number of times you want to flip"
read num
	for i in $(seq $num)
	do
		array=$((RANDOM%2))
		if [[ $array -eq 0 ]]
		then
			dict[$i]="H"
			a=$(($a+1))
		else
			dict[$i]="T"
			b=$(($b+1))
		fi
	done
	echo ${dict[@]}
	a1=$((($a*100)/$num))
        a2=$((($b*100)/$num))
 	arr=($a1 $a2 )
	echo "Percentage of H =$a1%"
	echo "Percentage of T =$a2%"

