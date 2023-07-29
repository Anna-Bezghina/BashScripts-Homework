#!/bin/bash
echo "Creating folder"
echo "please, enter your name first"
read name
echo "please, enter your surname"
read surname
echo "you entered name $name and surname $surmane"
folderName="${name}_$surname"
echo "your folder will be $folderName"
mkdir $folderName
echo "creating files $name and $surname in the folder $folderName"
cd $folderName
touch $name
touch $surname
ls -l 
cd ..


