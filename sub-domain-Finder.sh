#!/bin/bash
#domain=$1
#list=$2
#noOfThreads=$3
# Read the user input

echo "Enter the domain name: "
read domain_name
echo "Enter List detail names: "
read listName
echo "Enter the number of cpu threads: "
read threadNum
while read sub;
do echo "$sub.$domain_name";
done < $listName  | xargs -P$threadNum -I X bash -c "if host X &> '$domain_Name'.txt ;then echo X;fi"
