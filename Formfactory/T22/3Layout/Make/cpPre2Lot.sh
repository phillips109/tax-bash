#!/bin/bash
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
