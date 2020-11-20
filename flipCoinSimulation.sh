#!/bin/bash 
declare -A HHH
declare -A TTT
declare -A HTH
declare -A THT
declare -A HHT
declare -A TTH
declare -A HTT
declare -A THH


num=0
hhh=0
ttt=0
hth=0
tht=0
hht=0
tth=0
htt=0
thh=0
while (( $num<50))
do
random1=$((RANDOM%2))
random2=$((RANDOM%2))
random3=$((RANDOM%2))
if(( $random1 ==1 && $random2 ==1 && $random3 ==1 ))
then

     HHH[$hhh]="HHH"
     ((hhh++))
     ((num++))
elif(( $random1 ==0 && $random2 ==0 && $random3 ==0 ))
then
     TTT[$ttt]="TTT"
    ((ttt++))
    ((num++))
elif(( $random1 ==1 && $random2 ==0 && $random3 ==1 ))
then
     HTH[$hth]="HTH"
    ((hth++))
    ((num++))
elif(( $random1 ==0 && $random2 ==1 && $random3 ==0 ))
then
     THT[$tht]="THT"
    ((tht++))
    ((num++))
elif(( $random1 ==1 && $random2 ==1 && $random3 ==0 ))
then
     HHT[$hht]="HHT"
     ((hht++))
     ((num++))
elif(( $random1 ==0 && $random2 ==0 && $random3 ==1))
then
     TTH[$tth]="TTH"
    ((tth++))
    ((num++))
elif(( $random1 ==1 && $random2 ==0 && $random3 ==0 ))
then
     HTT[$htt]="HTT"
    ((htt++))
    ((num++))
else
     THH[$thh]="THH"
    ((thh++))
    ((num++))

fi
done

HHHlength=${#HHH[@]}
echo "HHH :${#HHH[@]}"
TTTlength=${#TTT[@]}
echo "TTT :${#TTT[@]}"
HTHlength=${#HTH[@]}
echo "HTH :${#HTH[@]}"
THTlength=${#THT[@]}
echo "THT :${#THT[@]}"

HHTlength=${#HHT[@]}
echo "HHT :${#HHT[@]}"
TTHlength=${#TTH[@]}
echo "TTH :${#TTH[@]}"
HTTlength=${#HTT[@]}
echo "HTT :${#HTT[@]}"
THHlength=${#THH[@]}
echo "THH :${#THH[@]}"

HHHpercentage=$(echo $HHHlength 50 100 | awk '{ print $1/$2*$3 }')
echo "HHH Percentage: $HHHpercentage%"
TTTpercentage=$(echo $TTTlength 50 100 | awk '{ print $1/$2*$3 }')
echo "TTT Percentage: $TTTpercentage%"
HTHpercentage=$(echo $HTHlength 50 100 | awk '{ print $1/$2*$3 }')
echo "HTH Percentage: $HTHpercentage%"
THTpercentage=$(echo $THTlength 50 100 | awk '{ print $1/$2*$3 }')
echo "THT Percentage: $THTpercentage%"

HHTpercentage=$(echo $HHTlength 50 100 | awk '{ print $1/$2*$3 }')
echo "HHT Percentage: $HHTpercentage%"
TTHpercentage=$(echo $TTHlength 50 100 | awk '{ print $1/$2*$3 }')
echo "TTH Percentage: $TTHpercentage%"
HTTpercentage=$(echo $HTTlength 50 100 | awk '{ print $1/$2*$3 }')
echo "HTT Percentage: $HTTpercentage%"
THHpercentage=$(echo $THHlength 50 100 | awk '{ print $1/$2*$3 }')
echo "THH Percentage: $THHpercentage%"

