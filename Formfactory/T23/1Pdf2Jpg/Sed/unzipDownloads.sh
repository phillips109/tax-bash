#!/bin/bash

cd ~/Downloads
dir *.zip
echo "Enter the name of the file you wish to unzip:"
read zipfile
echo $zipfile
sleep 5
unzip $zipfile -d ~/Downloads/images
cd ~/Projects/Tax-bash/Formfactory/T22/1Pdf2Jpg/Main
