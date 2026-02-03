#!/bin/bash

#This file is called cpNos2Seqs.sh

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

clear
echo "You are about to copy an empty ../Nos/"$1".num to" 
echo "the ../Seq/"$1".seq file." 

if [ -f ../Seqs/$1.seq ]
  then
      echo $1".seq already exists."
      echo
      echo "If you continues, the current $1.seq file"
      echo "will be copied to ../Bkup/$1.seq and"
      echo "../Seq/$1.seq will be overwritten."
      echo
      echo "ARE YOU SURE YOU WANT TO OVERWRITE "$1".seq?"
      echo "Enter yes or no"
      read yesorno
      if [ "$yesorno" = "yes" ]
      then
	  cp ../Seqs/$1.seq ../Bkup/$1.seq
	  echo "Backup of ../Seqs/"$1".seq to ../Bkup/"$1".seq made."
	  sleep 3
     	  cp ../Nos/$1.num ../Seqs/$1.seq
	  echo "../Nos/"$1".num copied to ../Seqs/"$1".seq"
	  sleep 5
      else
	  echo "Copy not made."
	  sleep 5
      fi
  else
	cp ../Nos/$1.num ../Seqs/$1.seq
	echo $1".seq does not exist." 
	echo "Copy made."
	sleep 5
  fi
exit 0    
