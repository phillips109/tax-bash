BEGIN { FS = "\n"; RS = ""}


/^addit/ {
    for ( i = 4; i <= NF; i++ ) {

     if ( $i == "Variable" ) 
	 print "<xsl:variable name='" $2 "'>"
     
     else if ( $i == "endVariable" ) { 
	 print "</xsl:variable>"
         print "\n"
    }
     else if ( i == 5 ) 
	 print "<xsl:value-of select = '" $i " +" 
	 
     else if ( i == (NF - 1) ) {
	     print $i "'/>"
	 }
     else 
         print $i " +"
}    
}


/^const/ {
    for ( i = 4; i <= NF; i++ ) {

     if ( $i == "Variable" ) 
	 print "<xsl:variable name='" $2 "'>"
     
     else if ( $i == "endVariable" ) { 
	 print "</xsl:variable>"
         print "\n"
     }
     else if ( i == 5 )
	 print "value-of select='" $5 "'/>"

    }
}

/^dlin/ {
    for ( i = 4; i <= NF; i++ ) {

     if ( $i == "Variable" ) 
	 print "<xsl:variable name='" $2 "'>"
     
     else if ( $i == "endVariable" ) { 
	 print "</xsl:variable>"
         print "\n"
     }
     if ( $i == "Choose" ) {
	 print "<xsl:choose>"
     }
     else if ( $i == "endChoose" ) {
	 print "</xsl:choose>"
     }
     else if ( $i == "When" ) {
	 print "<xsl:when test=\"string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='" form "-Copy00-line" $2 "'])) != ''\">"
	 if ( $(i+2) != "Choose") {
	 print "<xsl:value-of select=\"format-number(//override[normalize-space(ancestor::taxline/lineneme='" form "-Copy00-line" $2 "'], '" $3 "')\"/>"
	 }
     }
     else if ( $i == "endWhen" ) {
	 print "</xsl:when>"
     }
     else if ( $i == "Otherwise" ) {
	 print "<xsl:otherwise>"
	 print "<xsl:value-of select=\"format-number(sum(//total(normalize-space(ancestor::taxline/linename)='" form "-Copy00-line" $2 "']), '" $3 "')\"/>"
     }
     else if ( $i == "endOtherwise" ) {
	 print "</xsl:otherwise>"
     }
     else if ( $i == "endChoose" )
	 print "</xsl:choose>"
    }
  }

/^dPull/ {
    for ( i = 4; i <= 11; i++ ) {

     if ( $i == "Variable" ) 
	 print "<xsl:variable name=\"" form "-Copy" copy "-line"  $2 "\">"
     
     else if ( $i == "endVariable" ) { 
	 print "</xsl:variable>"
         print "\n"
     }
     if ( $i == "Choose" ) {
	 print "<xsl:choose>"
     }
     else if ( $i == "endChoose" ) {
	 print "</xsl:choose>"
     }
     else if ( $i == "When" ) {
	 print "<xsl:when test=\"document('../Output/" $12 "-Copy00.xml')\">"
	 if ( $(i+2) != "Choose") {
	 print "<xsl:value-of select=\"document('../Output/" $12 "-Copy" $13 ".xml)//copy" copy "line" $14 "\"/>"
	 }
     }
     else if ( $i == "endWhen" ) {
	 print "</xsl:when>"
     }
     else if ( $i == "Otherwise" ) {
	 print "<xsl:otherwise>"
	 print "<xsl:value-of select= \"0\"/>"
     }
     else if ( $i == "endOtherwise" ) {
	 print "</xsl:otherwise>"
     }
     else if ( $i == "endChoose" )
	 print "</xsl:choose>"
    }
    

}

/^subtr/ {
    for ( i = 4; i <= 6; i++ ) {
	if ( $i == "Variable" ) {
	    print "<xsl:variable name=\"" form "-Copy" copy "-line" $2 "\">"
	    }
	else if ( $i == "endVariable" ) {
            print "</xsl:variable>"
	    print ""
	}
	else if ( $i = "Value" ) { 
	     print "<xsl:value-of select=\"$" form "-Copy" copy "-line" $7 " - $" form "-Copy" copy "-line" $8 ", '" $3 "')\"/>"
	}
    }
}

/^subt0/ {   
 for ( i = 3; i <= 11; i++ ) {
     if ( $i == "Choose" ) {
	 print "<xsl:choose>"
     }
     else if ( $i == "endChoose" ) {
	 print "</xsl:choose>"
     }
     else if ( $i == "When" ) {
	 print "<xsl:when test='"$12"'>"
	 if ( $(i+2) != "Choose") {
	 print "<xsl:value-of select='"0"'/>"
	 }
     }
     else if ( $i == "endWhen" ) {
	 print "</xsl:when>"
     }
     else if ( $i == "Otherwise" ) {
	 print "<xsl:otherwise>"
	 print "<xsl:value-of select='"$13"'/>"
     }
     else if ( $i == "endOtherwise" ) {
	 print "</xsl:otherwise>"
     }
     else if ( $i == "Variable" ) {
	 print "<xsl:variable name='"$2"'>"
     }
     else if ( $i == "endVariable" ) {
	 print "</xsl:variable>"
	 print ""
     }
 }
} 

/^tCalc/ {
    for ( i = 4; i <= 8; i++ ) {

	if ( $i == "Variable" ){
	    print "<xsl:variable name=\"" form "-Copy" copy "-line" $2 "\"/>"
	}
	else if ( $i == "endVariable" ) { 
	    print "</xsl:variable>"
	    print ""
	}
	else if ( $i == "CallTemplate" ) {
	    print "<xsl:call-template name=\"taxCalc\">"
        }
        else if ( $i == "endCallTemplate" ) {
            print "</xsl:call-template>"
        }
        else if ( $i == "withParam" ) {
            print "<with-param name=\"filingStatus\" select=\"$" form "-Copy" copy "-lineFS\"/>"
            print "<with-param name=\"lineToBeTaxed\" select=\"$" form "-Copy" copy "-line" $9 "\"/>"
        }
        
}
}


/^tlin/ {
    for ( i = 3; i <= NF; i++ ) {

	if ( $i == "Variable" ){
	    print "<xsl:variable name=\"" form "-Copy" copy "-line" $2 "\"/>"
	}
	else if ( $i == "endVariable" ) { 
	    print "</xsl:variable>"
	    print ""
	}
	else  {
	    print "<xsl:value-of select=\"document('../Data/" form "_Copy" copy "_line" $2 "_text.xml')//text\"/>"
	}
}
}


/^tPull/ {
    for ( i = 3; i <= 10; i++ ) {

	if ( $i == "Variable" ) {
	 print "<xsl:variable name=\"" form "-Copy" copy "-line"  $2 "\">"
	}
     else if ( $i == "endVariable" ) { 
	 print "</xsl:variable>"
         print "\n"
     }
     if ( $i == "Choose" ) {
	 print "<xsl:choose>"
     }
     else if ( $i == "endChoose" ) {
	 print "</xsl:choose>"
     }
     else if ( $i == "When" ) {
	 print "<xsl:when test=\"document('../Data/" $11 "_Copy" copy "_line" $12 "_text.xml')\">"
	 if ( $(i+2) != "Choose") {
	 print "<xsl:value-of select=\"document('../Data/" $11 "_Copy" copy "_line" $12 "_text.xml')//text\"/>"
	 }
     }
     else if ( $i == "endWhen" ) {
	 print "</xsl:when>"
     }
     else if ( $i == "Otherwise" ) {
	 print "<xsl:otherwise>"
	 print "<xsl:value-of select= \"0\"/>"
     }
     else if ( $i == "endOtherwise" ) {
	 print "</xsl:otherwise>"
     }
     else if ( $i == "endChoose" ) {
	 print "</xsl:choose>"
    }
}
}

 /^cnum/ {   
 for ( i = 3; i <= NF; i++ ) {
     if ( $i == "Choose" ) {
	 print "<xsl:choose>"
     }
     else if ( $i == "endChoose" ) {
	 print "</xsl:choose>"
     }
     else if ( $i == "When" ) {
	 print "<xsl:when test='"$(i+1)"'>"
	 if ( $(i+2) != "Choose") {
	 print "<xsl:value-of select='"$(i+2)"'/>"
	 }
     }
     else if ( $i == "endWhen" ) {
	 print "</xsl:when>"
     }
     else if ( $i == "Otherwise" ) {
	 print "<xsl:otherwise>"
	 print "<xsl:value-of select='"$(i+1)"'/>"
     }
     else if ( $i == "endOtherwise" ) {
	 print "</xsl:otherwise>"
     }
     else if ( $i == "Variable" ) {
	 print "<xsl:variable name=\"" form "-Copy" copy "-line" $2 "\">"
     }
     else if ( $i == "endVariable" ) {
	 print "</xsl:variable>"
	 print ""
     }
 }
 }
 
 /^ctext/ {   
 for ( i = 3; i <= 10; i++ ) {
     if ( $i == "Choose" ) {
	 print "<xsl:choose>"
     }
     else if ( $i == "endChoose" ) {
	 print "</xsl:choose>"
     }
     else if ( $i == "When" ) {
	 print "<xsl:when test=\"" $11 "\">"
	 if ( $(i+1) != "Choose") {
	 print "<xsl:value-of select=\"" $12 "\"/>"
	 }
     }
     else if ( $i == "endWhen" ) {
	 print "</xsl:when>"
     }
     else if ( $i == "Otherwise" ) {
	 print "<xsl:otherwise>"
	 print "<xsl:value-of select='" $13 "'/>"
     }
     else if ( $i == "endOtherwise" ) {
	 print "</xsl:otherwise>"
     }
     else if ( $i == "Variable" ) {
	 print "<xsl:variable name=\"" form "-Copy" copy "-line" $2 "\">"
     }
     else if ( $i == "endVariable" ) {
	 print "</xsl:variable>"
	 print ""
     }
 }
 }
 


