#!/bin/bash
echo "Enter full path to file"
read file
while IFS= read -r line; do
	echo $line
done < "$file"
