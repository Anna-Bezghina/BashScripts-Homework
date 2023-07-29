#!/bin/bash
echo "The name of current script is $0"
echo "all arguments this running script $*"
echo "there are $# of arguments"
echo "here, for example, the second argument is $1, and the 4-th argument is $4"
if [[ $1 -eq $2 ]]; then
    echo "Exit code of [[$1 -eq $2]]: $? (True)"
else
    echo "Exit code of [[$1 -eq $2]]: $? (False)"
fi
