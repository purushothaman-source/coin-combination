#!/bin/bash
declare -A HH
declare -A TT
declare -A HT
declare -A TH

num=0
hh=0
tt=0
ht=0
th=0
while (( num<50))
do
random1=$((RANDOM%2))
random2=$((RANDOM%2))
if (( $random1 ==1 && $random2 ==1 ))
then

     HH[$hh]="HH"
     ((hh++))
     ((num++))
elif (( $random1 ==0 && $random2 ==0 ))
then
     TT[$tt]="TT"
    ((tt++))
    ((num++))
elif (( $random1 ==1 && $random2 ==0 ))
then
     HT[$ht]="HT"
    ((ht++))
    ((num++))
else
     TH[$th]="TH"
    ((th++))
    ((num++))
fi
done

HHlength=${#HH[@]}
echo "HH :${#HH[@]}"
TTlength=${#TT[@]}
echo "TT :${#TT[@]}"
HTlength=${#HT[@]}
echo "HT :${#HT[@]}"
THlength=${#TH[@]}
echo "TH :${#TH[@]}"

HHpercentage=$(echo $HHlength 50 100 | awk '{ print $1/$2*$3 }')
echo "HH Percentage: $HHpercentage%"
TTpercentage=$(echo $TTlength 50 100 | awk '{ print $1/$2*$3 }')
echo "TT Percentage: $TTpercentage%"
HTpercentage=$(echo $HTlength 50 100 | awk '{ print $1/$2*$3 }')
echo "HT Percentage: $HTpercentage%"
THpercentage=$(echo $THlength 50 100 | awk '{ print $1/$2*$3 }')
echo "TH Percentage: $THpercentage%"

