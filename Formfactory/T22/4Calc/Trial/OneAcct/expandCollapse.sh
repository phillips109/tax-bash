#!/bin/bash

#apollo.sh implements the switch from collapsed to expanded list

expand(){
    echo "Enter the name of the list file you want to view expanded."
    echo "Enter just the name. The program will append the .xml for you."
    read file

    java $XALANJAVAJAR org.apache.xalan.xslt.Process -in $file.xml -xsl style.xsl -out $file.fo -PARAM view expanded
    fop $file.fo $file.pdf
    qpdfview $file.pdf
    }

collapse(){
    echo "Enter the name of the list file you want to view collapsed."
    echo "Enter just the name. The program will append the .xml for you."
    read file

    java $XALANJAVAJAR org.apache.xalan.xslt.Process -in $file.xml -xsl style.xsl -out $file.fo -PARAM view collapsed
    fop $file.fo $file.pdf
    qpdfview $file.pdf
}

quit=no
while [ "$quit" != "yes" ]
do
    echo "Enter one of the following options:"
    echo 
    echo "  c)   View a list file collapsed."
    echo "  e)   View a list file expanded."
    echo "  q)   Exit the program."

    read expand

    case $expand in
	
        c)  collapse;;
	e)  expand;;
        q)  rm -f *.fo
            rm -f *.pdf
            quit=yes;;
        *)  echo "Sorry, choice not recognized"
    esac	
done


exit 0
