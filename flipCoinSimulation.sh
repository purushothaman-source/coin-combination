#!/bin/bash
declare -A Head
declare -A Tail
i=0
num=0
heads=0
tails=0
while (( num<50))
do
random=$((RANDOM%2))
if(( $random == 1))
then
  Head[$heads]="head"
   ((heads++))
  ((num++))
else
  Tail[$tails]="tail"
  ((tails++))
  ((num++))
fi
done

headpercentage=$(echo $heads 50 100 | awk '{ print $1/$2*$3 }')
echo "head Percentage: $headpercentage%"
tailpercentage=$(echo $tails 50 100 | awk '{ print $1/$2*$3 }')
echo "tail Percentage: $tailpercentage%"


