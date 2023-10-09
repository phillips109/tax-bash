#!/bin/bash

printf "%-03s\t!%-05s\t!%-05s\t!%-30s\n" "seq" "name" "type" "menuEntry"	
num=1
while (( $num <= $1 ))
do
   printf "%03d\t!%-05s\t!%-05s\t!%-30s\n" $num "" "" ""
    num=$((num+1))
done
exit 0      
