#! /bin/bash
#changeName.sh is to change .text to .txt

for file in $(ls *.txt)
do
    echo $file
    foo=${file%txt}
    echo $foo
    bar=text
    echo $bar
    newName=$foo$bar
    echo $newName
    mv $file $newName
done

    
