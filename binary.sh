# !/bin/bash

# Shell script to convert between int and binary.
# Takes two arguments from the command line, 
# The first denotes which form you are converting to.
# 0 will convert int to binary and 1 will convery binary to int.
# The second is the number you wish to convert.

result=0
remainder=0
num=$(($2))
place=1

# 0 for the first arg will convert an int to binary
if [ $1 = 0 ];then
    while (( $num > 0 ))
    do
        let remainder=$(( num % 2 ))
        let result=$(( result + remainder * place ))
        let place=$(( place * 10 ))
        let num=$(( num / 2))
    done

# 1 for the first arg will convert binary to int
elif [ $1 = 1 ];then
    power=0
    while (( $num > 0 ))
    do
        let remainder=$(( num % 10 ))
        let result=$(( result + remainder * 2**power ))
        let power=$(( power + 1 ))
        let num=$(( num /10 ))
    done
fi

echo "$result"
    
