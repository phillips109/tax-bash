#!/bin/bash

#This file is Tax-bash/Formfactory/T??/3Layout/Make/cpPre2Lot.sh
#the prupose is to copy a ../PreLot/.pre file to a ../Lot/.lot file

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


clear
echo "You are about to copy the data-less ../PreLot/"$1".pre to" 
echo "the ../Lot/"$1"_Copy"$2".lot file." 

if [ -f ../Lot/$1_Copy$2.lot ]
  then
      echo $1"_Copy"$2".lot already exists."
      echo
      echo "If you continue," 
      echo "The ../Lot/"$1"_Copy"$2".lot file"
      echo "will be copied to ../Bkup/"$1"_Copy"$2".lot and"
      echo "../Lot/"$1"_Copy"$2".lot will be overwritten"
      echo "by ../PreLot/"$1".pre file."
      echo
      echo "ARE YOU SURE YOU WANT TO OVERWRITE ../Lot/"$1"_Copy"$2".lot?"
      echo "Enter yes or no"
      read yesorno
      if [ "$yesorno" = "yes" ]
      then
	  cp ../Lot/$1_Copy$2.lot ../Bkup/$1_Copy$.lot
	  echo "Backup of ../Lot/"$1"_Copy"$2".lot made."
	  sleep 3
     	  cp ../PreLot/$1.pre ../Lot/$1_Copy$2.lot
	  echo "../PreLot/"$1".pre copied to ../Lot/"$1"_Copy"$2".lot"
	  sleep 5
      else
	  echo "Copy NOT made."
	  sleep 5
      fi
  else
	echo $1"_Copy"$2".lot.reg does not exist." 
	cp ../PreLot/$1.pre ../Lot/$1_Copy$2.lot
	echo "../PreLot/$1.pre copied to ../Lot/$1_Copy00.lot made."
	sleep 5
  fi
exit 0    
