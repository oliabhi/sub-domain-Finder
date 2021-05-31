# Sub-domain-finder
-----> Script takes domain, subdomain meta list , process threads as input, finds sub-domains.

No of threads can be monitored using Htop utility.

-----> HTOP installation ( #CENTOS ) : 

--- yum install epel-release   [CentOS 8]

--- yum install htop

#Script working : 
--- Taking user inputs for Domain name (e.g abc.com) , list (e.g sublist.txt) , noOfthreads (e.g 50 *depends on your cpu build. Advice to keep the number low)

---storing the output in a file created after process ends (file name - domain enter.txt)