#!/bin/bash

if test -d T22
then
    echo "The directory T22 is being removed."
    rm -R T22
    sleep 3
fi

echo "Creating directory T22"
mkdir T22
sleep 3

echo "Copying 7App to T22"
cp -r 7App/* T22
sleep 3

echo "Making ziptarball of T22"
sleep 3
tar -zcvf T22.tar.gz T22

exit 0
