#!/bin/bash
domain=$1
list=$2
noOfThreads=$3

while read sub;
do echo "$sub.$domain";
done < $list  | xargs -P$noOfThreads -I X bash -c "if host X &> '$domain'.txt ;then echo X;fi"


