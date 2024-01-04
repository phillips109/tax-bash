#! /bin/bash
#changeName.sh is to change .text to .txt

for file in $(ls *.text)
do
    echo $file
    foo=${file%text}
    echo $foo
    bar=txt
    echo $bar
    newName=$foo$bar
    echo $newName
    mv $file $newName
done

    
