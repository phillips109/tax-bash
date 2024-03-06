#!/bin/bash

if test -d T23
then
    echo "The directory T23 is being removed."
    rm -R T23
    sleep 3
fi

echo "Creating directory T23"
mkdir T23
sleep 3

echo "Copying 7App to T23"
cp -r 7App/* T23
sleep 3

echo "Making ziptarball of T23"
sleep 3
tar -zcvf T23.tar.gz T23

exit 0
