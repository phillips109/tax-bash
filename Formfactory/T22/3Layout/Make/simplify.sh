#!/bin/bash
#simplify.sh
#This converts all the tPull lines to tlin and
#all the dPull lines to dlin.

sed -f ../Sed/pull2lin.sed ../Lot/$1_Copy$2.lot.reg  > ../Lot/$1_Copy$2.lot.sim
