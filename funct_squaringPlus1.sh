#!/bin/bash
source ./squaring.sh

function Plus1 (){
	local SQ=$1
	local arif=$(( SQ + 1))
	echo $arif
}

isnum='^[-]?[0-9]+$'
[ $# -eq 0 ] && echo "there aren no set arguments"
for a in $*; do [[ ! $a =~ $isnum ]] && echo "you should set numeric argument" && exit 1;
done
for a in $*; do 
	num_sq=$(my_squaring "$a")
	res=$(Plus1 "$num_sq")
	echo "$res"
done
