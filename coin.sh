#!/bin/bash
a=0
b=0
c=0
d=0
e=0
f=0
g=0
k=0
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
echo "1 . singlet combination 2 . Doublet combination 3 . Tripplet combination  "
echo "Choose any number"
 read n 
declare -A dict
if [[ $n -eq 1 ]]
then
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
fi 

if [[ $n -eq  2 ]]
then
	for i in $(seq $num)
	do
		array=$((RANDOM%4))
		if [[ $array -eq 0 ]]
		then
			dict[$i]="HH"
			a=$(($a+1))
		elif [[ $arr -eq 1 ]]
		then
			dict[$i]="HT"
			b=$(($b+1))
		elif [[ $arr -eq 2 ]]
		then
			dict[$i]="TH"
			c=$(($c+1))
		else
			dict[$i]="TT"
			d=$(($d+1))
		fi
	done
	echo ${dict[@]}
	a1=$((($a*100)/$num))
        a2=$((($b*100)/$num))
	a3=$((($c*100)/$num))
        a4=$((($d*100)/$num))
	arr=($a1 $a2 $a3 $a4)
	echo "Percentage of HH=$a1 %"
        echo "Percentage of HT=$a2 %"
        echo "Percentage of TH=$a3 %"
        echo "Percentage of TT=$a4 %"


fi
if [[ $n -eq  3 ]]
then
	for i in $(seq $num)
	do
		array=$((RANDOM%10))
		if [[ $array -eq 0 ]]
		then
			dict[$i]="HHH"
			a=$(($a+1))
		elif [[ $arr -eq 1 ]]
		then
			dict[$i]="HHT"
			b=$(($b+1))
		elif [[ $arr -eq 2 ]]
		then
			dict[$i]="HTH"
			c=$(($c+1))
		elif [[ $arr -eq 3 ]]
		then
			dict[$i]="HTT"
			d=$(($d+1))
		elif [[ $arr -eq 4 ]]
		then
			dict[$i]="THH"
			e=$(($e+1))
		elif [[ $arr -eq 5 ]]
		then
			dict[$i]="THT"
			f=$(($f+1))
		elif [[ $arr -eq 6 ]]
		then
			dict[$i]="TTH"
			g=$(($g+1))
		else
			dict[$i]="TTT"
			k=$(($k+1))

		fi
		done
		echo ${dict[@]}
        	a1=$((($a*100)/$num))
       		a2=$((($b*100)/$num))
        	a3=$((($c*100)/$num))
        	a4=$((($d*100)/$num))
		a5=$((($e*100)/$num))
        	a6=$((($f*100)/$num))
        	a7=$((($g*100)/$num))
	        a8=$((($k*100)/$num))
		arr=($a1 $a2 $a3 $a4 $a5 $a6 $a7 $a8)
		echo "Percentage of HHH=$a1 %"
		 echo "Percentage of HHT=$a2 %"
		 echo "Percentage of HTH=$a3 %"
		 echo "Percentage of HTT=$a4 %"
		 echo "Percentage of THH=$a5 %"
		 echo "Percentage of THT=$a6 %"
		 echo "Percentage of TTH=$a7 %"
		 echo "Percentage of TTT=$a8 %"

fi 
