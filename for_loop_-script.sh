#!/bin/bash
[ -z $1 ] || [ -z $2 ] && echo "you shold set at least 2 parameters" && exit 1
echo "you have been set $#, the first two are $1 and $2"
isnumber='^[-]?[0-9]+$' ; sum=0 ; counter=0
for i in "$@"; do
if [[ $i =~ $isnumber ]]; then printf "$i\n"; 
sum=$(($sum+$i)); ((counter ++))
else
ind_str=$((counter + 1))
echo "the argument #$ind_str isn't number, it's string the value is $i"
fi
done
echo "Sum: $sum"
echo "Number of numeric args $counter"
avg=$(( $sum/$counter ))
echo "average of all numeric int arguments is $avg"
