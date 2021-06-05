#!/bin/bash
#domain=$1
#list=$2
#noOfThreads=$3
# Read the user input

echo "Enter the domain name: "
read suraj

# whatever user is entering in the screen will be stored in a variable named suraj
# $suraj
echo "Enter List detail names: "
read listName
echo "Enter the number of cpu threads: "
read threadNum

# $ means value of variable
while read sub;
do echo "$sub.$suraj";  
# /dev/null
done < $listName  | xargs -P$threadNum -I X bash -c "if host X &> '$suraj'.txt ;then echo X;fi"
