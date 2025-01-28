#!/bin/bash

echo "Are you sure you want to overwrite ../Dat/$1_Copy$2.dat?"
echo "Enter yes or no"
read yesorno
if [ "$yesorno" = "yes" ]
then
       cp ../PreDat/$1_Copy$2.pre ../Dat/$1_Copy$2.dat
else
    echo "Copy not made."
fi
exit 0    
