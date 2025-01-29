#!/bin/bash

if test -d T23
then
    echo "The directory T24 is being removed."
    rm -R T24
    sleep 3
fi

echo "Creating directory T24"
mkdir T24
sleep 3

echo "Copying 7App to T24"
cp -r 7App/* T24
sleep 3

echo "Making ziptarball of T24"
sleep 3
tar -zcvf T23.tar.gz T24

exit 0
