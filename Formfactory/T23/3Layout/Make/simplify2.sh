#!/bin/bash
#simplify2.sh

#This removes the line starting with "type":
#awk -f ../Awk/rmMenu.awk ../Text/$1.txt > ../Columns/$1.col1
#This changes tPull to tlin and dPull to dlin:
#sed -f ../Sed/pull2lin.sed ../Columns/$1.col1  > ../Columns/$1.col2
#This puts in a field to designate the column for each line:
#awk -f ../Awk/chOrder.awk ../Columns/$1.col2 > ../Columns/$1.col3
#This removes any blank lines.
#sed -f ../Sed/rmblank.sed ../Columns/$1.col3 > ../Columns/$1.col4
#This removes the directions and headings.
#awk -f ../Awk/rmdir.awk ../Columns/$1.col4 > ../Columns/$1.col5
#This sorts the lines by column (a-z):
#sort ../Columns/$1.col5 > ../Columns/$1.col6
#This inserts a heading line for each column:
#awk -f ../Awk/setCols.awk ../Columns/$1.col6 > ../Columns/$1.col7
#This makes the PreLot file:
awk -f ../Awk/makePreLot.awk ../Columns/$1.col7 > ../Columns/$.col8
#This removes the intermediate files (*.col1,2,and 3)
#rm $1.col1
#rm $1.col2
#rm $1.col3


