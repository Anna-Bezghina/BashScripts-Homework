#!/bin/bash
echo "The name of current script is $0"
echo "there are $# of arguments"
if [ -z $1 ] || [ -z $2 ]; then
	echo "this script requires at least 2 argument it must be string"
else
	echo "here, for example, the 1st argument is $1 and the second argument is $2"
fi
[[ $1 == $2 ]]; echo "exit code of comparing 1st and 2nd string arguments is $?"
[[ $1 > $2 ]]; echo "checking if the 1st ,string argument longer then 2nd, exit code of this operation is $?"
export TEST=123
[ -n $TEST ]; echo "we have checked TEST variable present in the enviroment, exit code is $?"
if [ -z $3 ] || [ -z $4 ]; then 
        echo "this script also requires 3th and 4th  argument it must be integer"
else
        echo "the 3th and 4th argument is $3 and $4"
fi
[[ $3 -ne $4 ]]; echo "wonder if 3rd and 4th integer arguments are not equal, the exit code of this operation is $?"
[[ $3 -gt $4 ]]; echo "3rd integer argument is greater or equal to 4th integer, exit code is $?"

