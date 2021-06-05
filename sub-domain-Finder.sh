#!/bin/bash
echo "Enter the domain name: "
read domainName
echo "Enter List detail names: "
read listName
echo "Enter the number of cpu threads: "
read threadNum

while read sub;
do echo "$sub.$domainName";  
done < $listName  | xargs -P$threadNum -I X bash -c "if host X &> '$domainName'.txt ;then echo X;fi"
