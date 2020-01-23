#!/bin/bash -x
echo "Welcome to Arthmetic Computation "

read -p "Enter value of a: " a
read -p "Enter value of b: " b
read -p "Enter value of c: " c

[ -z "${a//[0-9]}" ] && [ -n "$a" ] || echo "Sorry integers only"
[ -z "${b//[0-9]}" ] && [ -n "$b" ] || echo "Sorry integers only"
[ -z "${c//[0-9]}" ] && [ -n "$c" ] || echo "Sorry integers only"


	addition=$(( $a+$b*$c ))
	echo $addition
	multiplication=$(( $a*$b+$c ))
	echo $multiplication
