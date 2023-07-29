#!/bin/bash
echo "The name of current script is $0"
if [ $# -ge 2 ] ; then
        echo "Invalid number of arguments"
        echo "This script requires exactly One argument it must be integer"
fi
echo "there are $# of arguments"
# argLETTES=$(echo "$1" | tr -cd [:alpha:] | wc -c)
if (( ${#1} % 2 == 0 )); then
	echo "Odd"
else 
	echo "Even"
fi
