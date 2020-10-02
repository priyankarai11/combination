#!/bin/bash
echo "Flip coin simulator"

arr=$((RANDOM%2))
if [[ $arr -eq 0 ]]
then
	echo "Head"
else
	echo "Tails"
fi
