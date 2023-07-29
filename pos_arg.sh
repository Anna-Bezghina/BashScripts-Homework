#!/bin/bash

# Check if there are any arguments
if [ $# -eq 0 ]; then
    echo "No arguments provided."
    exit 1
fi

# Loop through the arguments and print them
for ((i=1; i<=$#; i++)); do
    echo "Arg$i: ${!i}"
done

# Calculate the sum of arguments and print it
for ((i=1; i<=$#; i++)); do
    next_arg=$((i % $# + 1))
    sum=$(( ${!i} + ${!next_arg} ))
    echo -n "$sum "
done
