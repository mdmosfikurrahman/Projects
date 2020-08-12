#!/bin/bash
while true
do

function calculator(){

echo -n "Enter the first number:"
read a
echo -n "Enter the second number:"
read b
echo -n "Enter operation( + or - or * or / ) :"
read ch
case $ch in
  "+")res=`echo $a + $b | bc` 
  ;; 
  "-")res=`echo $a - $b | bc` 
  ;; 
  "*")res=`echo $a \* $b | bc` 
  ;; 
  "/")res=`echo "scale=2; $a / $b" | bc` 
  ;; 
esac
echo "========================"
echo "     Result : $res"
echo "========================"
}


function password(){
echo "This is a simple password generator"
echo "Please enter the length of the password: "
read PASS_LENGTH
echo "Here is your 5 passwords"
echo "========================"
for p in $(seq 1 5);
do
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH

done
echo "========================"
}



function textbook(){
nano noteBook.txt  
}

function game(){
echo "==========================="
echo " Welcome to a guessing game "
echo "==========================="

var1=$(( RANDOM % 10 ))
echo "Guess a number 0 to 9 :"
echo "$var1"
 
while :
do 

read var2 
if [ $var2 -eq $var1 ] 
then 
echo "========================"
echo "  You guessed it right"
echo "========================"
break
elif [ $var2 -lt $var1 ]
then 
echo "guess higher number:"
elif [ $var2 -gt $var1 ]
then 
echo "guess lower number"
fi 
done
}

function currency(){

echo -n "Enter the Amount:"
read a

echo "Proess 1 for USA Dollar currency:"
echo "Proess 2 for Chinese Yuan:"
echo "Proess 3 for Indian Rupee currency:"
read b



usa=84.92
china=12.23
india=1.14

case $b in
  
  "1")res=`echo $a \* $usa | bc` 
  ;; 
  "2")res=`echo $a \* $china | bc` 
  ;; 
  "3")res=`echo $a \* $india | bc` 
  ;;
esac
echo "============================"
echo " Result : $res taka in BD"
echo "============================"

}

function weightConverterToKG(){
echo -n "Enter the height in inch:"
read a

echo -n "Enter the Width in inch:"

read b


c=0.6
d=660


  res=`echo $a \* $b \* $b \* $c | bc` 
  
  kg=`echo "scale=2; $res / $d" | bc` 
echo "============================"
echo "   Your weight is : $kg KG"
echo "============================"
}


echo ""
echo ""
echo "Enter 1 for Calculation"
echo "Enter 2 for For Note"
echo "Enter 3 for generating 5 passwerd"
echo "Enter 4 for calender"
echo "Enter 5 to play a game"
echo "Enter 6 for checking currency"
echo "Enter 7 for checking your weight"
echo "Enter 9 for exit"

read a

case $a in 
"1") 
calculator;;

"2")
textbook;;
"3")
password;;
"4")
cal;;
"5")
game;;
"6")
currency;;
"7")
weightConverterToKG;;
"9")
exit;;
esac 
done