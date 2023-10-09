#!/bin/bash

#The variables have been split up into separate files in ../Variables.
#The lines have also been split up into separate files in ../Lines.
 
#This allows the developer to work on the variables and lines that relate
#to a particular form.

#Now these variable and lines  need to be reamalgamated into one file 
#in order to be valid XSL and functional code.

#This file amalgamates ../Variables/v*.xsl  and ../Lines/l*.xml into ../ ../Xsl/taxlogic.xsl file. for the user to use.


rm ../Variables/*~ 2> /dev/null
rm ../Variables/?*# 2> /dev/null
rm ../Lines/*~ 2> /dev/null
rm ../Lines/?*# 2> /dev/null

 

echo '<?xml version="1.0" encoding="utf-8"?>'  > ../Xsl/taxlogic.xsl
echo '<xsl:stylesheet version="1.0"'  >> ../Xsl/taxlogic.xsl
echo '                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"' >> ../Xsl/taxlogic.xsl
echo '                xmlns:fo="http://www.w3.org/1999/XSL/Format"' >> ../Xsl/taxlogic.xsl
echo '                xmlns:xalan="http://xml.apache.org/xalan"'  >> ../Xsl/taxlogic.xsl 
echo '                exclude-result-prefixes="xalan">'  >> ../Xsl/taxlogic.xsl

echo ''  >> ../Xsl/taxlogic.xsl
echo '  <xsl:output indent="yes"/>'  >> ../Xsl/taxlogic.xsl
echo ''


cat ../Variables/v*.xsl >> ../Xsl/taxlogic.xsl


echo '' >> ../Xsl/taxlogic.xsl

echo '' >> ../Xsl/taxlogic.xsl

echo '<xsl:template match="/">'  >> ../Xsl/taxlogic.xsl
echo '<IRSForms>' >> ../Xsl/taxlogic.xsl


cat ../Lines/l*.xml >> ../Xsl/taxlogic.xsl



echo '</IRSForms>' >> ../Xsl/taxlogic.xsl
echo '</xsl:template>' >> ../Xsl/taxlogic.xsl
echo '</xsl:stylesheet>' >> ../Xsl/taxlogic.xsl


#The following lines replace the text $PREVYEAR with the value of the global variable set in bashrc.
#It does it using sed rather than the shell.
sed 's/$PREVYEAR/'"$PREVYEAR"'/' ../Xsl/taxlogic.xsl > ../Xsl/taxlogic.tmp
mv ../Xsl/taxlogic.tmp ../Xsl/taxlogic.xsl
rm ../Xsl/taxlogic.tmp
exit 0
