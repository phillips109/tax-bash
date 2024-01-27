#!/bin/bash
for file in $(ls ../TaxBash/*.use)
do
    #	echo $file
    #   cat $file
    cat ../TaxBash/$file >> ../Files/tax-bash

done
exit 0
