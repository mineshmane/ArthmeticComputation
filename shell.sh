#!/bin/bash  -x
echo "Welcome to Arthmetic Computation "
read -p "Enter value of a: " a
read -p "Enter value of b: " b
read -p "Enter value of c: " c
i=0;
[ -z "${a//[0-9]}" ] && [ -n "$a" ] || echo "Sorry integers only"
[ -z "${b//[0-9]}" ] && [ -n "$b" ] || echo "Sorry integers only"
[ -z "${c//[0-9]}" ] && [ -n "$c" ] || echo "Sorry integers only"
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

	echo "Array of computed itegers: " "${data[*]}"  
		len="${#data[@]}"
echo $len
# Performing Bubble sort  
for (( k=0; k<"${#data[@]}"; k++ )) 
do
    for(( j=0; j<$len; j++ )) 
    do
        if [[ ${data[$j]} -gt ${data[$(($j+1))]} ]]
        then
            # swap 
            temp=${data[$j]} 
            data[j]=${data[$(($j+1))]}   
            data[$(($j+1))]=$temp 
        fi
    done
done
  
# Performing Bubble sort  
for (( i=0; i<$len; i++ )) 
do
      
    for(( j=i; j<$(( $len-i-1)); j++)) 
    do
      
        if (( ${data[j]} < ${data[$((j+1))]} )) 
        then
            # swap 
            temp=${data[$j]} 
            data[$j]=${data[$((j+1))]}   
            data[$((j+1))]=$temp 
        fi
    done
done
  
echo "Array in sorted order :"
echo ${data[*]}

echo "Array in sorted order :"
echo ${data[*]} 
