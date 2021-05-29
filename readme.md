# Sub-domain-finder
Script takes domain, subdomain meta list , process threads as input, finds sub-domains.

No of threads can be monitored using Htop.

HTOP installation ( #CENTOS ) : 


# yum install epel-release   [CentOS 8]

# yum install htop



#!/bin/bash

# taking user inputs for Domain name (e.g abc.com) , list (e.g sublist.txt) , noOfthreads (e.g 50 *depends on your cpu build. Advice to keep the number low)
domain=$1
list=$2
noOfThreads=$3

while read sub;
do echo "$sub.$domain";
done < $list  | xargs -P$noOfThreads -I X bash -c "if host X &> /dev/null;then echo X;fi"

=============================================================
