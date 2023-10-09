#!/bin/bash

#The variables have been split up into separate files in ../Variables.
#The lines have also been split up into separate files in ../Lines.
 
#This allows the developer to work on the variables and lines that relate
#to a particular form.

#Now these variable and lines  need to be reamalgamated into one file 
#in order to be valid XSL and functional code.

#This file amalgamates ../Variables/v$1_Copy$2.xsl  and ../Lines/l$1_Copy$2.xml into ../ ../Xsl/$1_Copy$2.xsl file. for the user to use.


rm ../Variables/*~ 2> /dev/null
rm ../Variables/?*# 2> /dev/null
rm ../Lines/*~ 2> /dev/null
rm ../Lines/?*# 2> /dev/null

 

echo '<?xml version="1.0" encoding="utf-8"?>'  > ../Xsl/$1_Copy$2.xsl
echo '<xsl:stylesheet version="1.0"'  >> ../Xsl/$1_Copy$2.xsl
echo '                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"' >> ../Xsl/$1_Copy$2.xsl
echo '                xmlns:fo="http://www.w3.org/1999/XSL/Format"' >> ../Xsl/$1_Copy$2.xsl
echo '                xmlns:xalan="http://xml.apache.org/xalan"'  >> ../Xsl/$1_Copy$2.xsl 
echo '                exclude-result-prefixes="xalan">'  >> ../Xsl/$1_Copy$2.xsl

echo ''  >> ../Xsl/$1_Copy$2.xsl
echo '  <xsl:output indent="yes"/>'  >> ../Xsl/$1_Copy$2.xsl
echo ''


cat ../Variables/v$1_Copy$2.xsl >> ../Xsl/$1_Copy$2.xsl

#SchedC and Form8829 are mutually dependent.
#Therefore the logic file must contain logic for both forms.
#if  [ "$1" = "SchedC" ]
#then
#    cat ../Variables/vForm8829.xsl >> ../Xsl/$1_Copy$2.xsl
#fi
#if [ "$1" = "Form8829" ]
#then
#    cat ../Variables/vSchedC.xsl >> ../Xsl/$1_Copy$2.xsl
#fi

#Form1040 and SchedA are mutually dependent.
#Therefore the logic file must contain logic for both forms.

#if  [ "$1" = "Form1040" ]
#then
#    cat ../Variables/vSchedA.xsl >> ../../Xsl/$1_Copy$2.xsl
#fi
#if [ "$1" = "SchedA" ]
#then
#    cat ../Variables/vForm1040.xsl >> ../../Xsl/$1_Copy$2.xsl
#fi



echo '' >> ../Xsl/$1_Copy$2.xsl

echo '<xsl:include href="../BaseXsl/taxCalc.xsl"/>' >> ../Xsl/$1_Copy$2.xsl 

echo '' >> ../Xsl/$1_Copy$2.xsl

echo '<xsl:template match="/">'  >> ../Xsl/$1_Copy$2.xsl
echo '<IRSForms>' >> ../Xsl/$1_Copy$2.xsl


cat ../Lines/l$1_Copy$2.xml >> ../Xsl/$1_Copy$2.xsl

#SchedC and Form8829 are mutually dependent.
#The logic of both are included above.
#Here the "lines" of both are included.
#if  [ "$1" = "SchedC" ]
#then
#    cat ../Lines/lForm8829.xml >> ../../Xsl/$1_Copy$2.xsl
#fi
#if [ "$1" = "Form8829" ]
#then
#    cat ../Lines/lSchedC.xml >> ../Xsl/$1_Copy$2.xsl
#fi

#Form1040 and SchedA are mutually dependent.
#The logic of both are included above.
#Here the "lines" of both are included.

#if  [ "$1" = "Form1040" ]
#then
#    cat ../Lines/lSchedA.xml >> ../Xsl/$1.xsl
#fi
#if [ "$1" = "SchedA" ]
#then
#    cat ../Lines/lForm1040.xml >> ../Xsl/$1.xsl
#fi


echo '</IRSForms>' >> ../Xsl/$1_Copy$2.xsl
echo '</xsl:template>' >> ../Xsl/$1_Copy$2.xsl
echo '</xsl:stylesheet>' >> ../Xsl/$1_Copy$2.xsl


#The following lines replace the text $PREVYEAR with the value of the global variable set in bashrc.
#It does it using sed rather than the shell.
sed 's/$PREVYEAR/'"$PREVYEAR"'/' ../Xsl/$1_Copy$2.xsl > ../Xsl/$1_Copy$2.tmp
mv ../Xsl/$1_Copy$2.tmp ../Xsl/$1_Copy$2.xsl

exit 0
