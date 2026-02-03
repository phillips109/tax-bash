#!/bin/bash
#This file is Tax-bash/Formfactory/T??/3Layout/Make/simplify2.sh

#Copyrigh(C) 2023, 2024 Phillips Wedemeyer
#
#This file is part of a program called Tax-bash.
#
#Tax-bash is free software: you can redistibute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#Tax-bash is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>.
#
#

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


