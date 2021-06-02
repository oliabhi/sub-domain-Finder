#!/bin/bash

banner() {
        figlet subz
}
Usage() {
        echo "Usage: bash subz.sh -t domain.com -f filename.txt"
        echo "[-t / --target] : target"
        echo "[-f / --file] : filename"
}
sub-brute() {
while read sub; do
        if host "$sub.$target" &> /dev/null;then
                echo "$sub.$target"
        fi
done < $file
}
target=False
file=False
list=(
        banner
        sub-brute
        )
while [ -n "$1" ]; do
        case "$1" in
                -t)
                                target=$2
                                shift
                                ;;
                -f)
                                file=$2
                                shift
                                ;;
                -h)
                                Usage
                                exit
                                ;;
                *)
                        echo "[-] Unknown Option: $1"
                        Usage
                        exit
                        ;;
        esac
        shift
done
[[ $target == "False" ]] && [[ $file == "False" ]] && {
        echo " [-] Argument: -t/--target target.com -f/--file file.txt Required"
}
(
banner
sub-brute
)
