#!/bin/bash 
echo "Welcome to Arthmetic Computation "

read -p "Enter value of a: " a
read -p "Enter value of b: " b
read -p "Enter value of c: " c

[ -z "${a//[0-9]}" ] && [ -n "$a" ] || echo "Sorry integers only"
[ -z "${b//[0-9]}" ] && [ -n "$b" ] || echo "Sorry integers only"
[ -z "${c//[0-9]}" ] && [ -n "$c" ] || echo "Sorry integers only"
i=0
	addition=$(( $a+$b*$c ))
	data[i++]=$addition
	echo $addition
	multiplication=$(( $a*$b+$c ))
	echo $multiplication
	data[i++]=$multiplication
	division=$(( ($c + $a) / $b ))
	echo $division
	data[i++]=$division
	modulus=$(( $a % $b + $c ))
	echo   $modulus 
	data[i++]=$modulus

	echo "Array of computed itegers:  " "${data[@]}"
