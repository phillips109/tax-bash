#!/bin/bash

#This file is called makeNos.sh
#It's purpose is to creae the intermediate file /Nos/$1.num

#Copyright(C) 2023 Phillips Wedemeyer
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
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PUPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>.
#
#

printf "%-03s\t!%-05s\t!%-05s\t!%-30s\n" "seq" "name" "type" "menuEntry"	
num=1
while (( $num <= $1 ))
do
   printf "%03d\t!%-05s\t!%-05s\t!%-30s\n" $num "" "" ""
    num=$((num+1))
done
exit 0      
