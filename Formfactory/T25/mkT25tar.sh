#!/bin/bash

if test -d T25
then
    echo "The directory T25 is being removed."
    rm -R T25
    sleep 3
fi

echo "Creating directory T25"
mkdir T25
sleep 3

echo "Copying 7App to T25"
cp -r 7App/* T26
sleep 3

echo "Making ziptarball of T25"
sleep 3
tar -zcvf T25.tar.gz T25

exit 0
