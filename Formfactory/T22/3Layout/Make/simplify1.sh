#!/bin/bash
#simplify2.sh
#This removes the menu line from the .txt file.
#This converts all the tPull lines to tlin and
#all the dPull lines to dlin.

awk -f ../Awk/chOrder.awk ../Text/$1.txt > ../Columns/$1.col
#sed -f ../Sed/pull2lin.sed ../Text/$1.txt2  > ../Text/$1.txt3
#rm ../Text/$1.txt2
#sort ../Text/$1.txt3 > ../Text/$1.txt4
#awk -f ../Awk/2chOrder.awk ../Text/$1.txt5 > ../Text/$1.txt6

