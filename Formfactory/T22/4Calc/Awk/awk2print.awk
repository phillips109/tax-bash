# awk2print.awk This is to tconvert dat to variable directly.
#it is called with the name of the form as a parameter.
#awk -f awk2print.awk form=Form1040 inputfile



BEGIN {
      FS="[ \t]*!"
}

/^addit/ {
	 print ""
	 print "<xsl:variable name=\""form"-Copy00-line"$2"\">"
	 print "<xsl:value-of select=\"$"form"-Copy00-"$4" +"
	 x = 5
	 while ( x < NF )
	 {
	     print "$"form"-Copy00-"$(x)" +"
	     x=x+1
	 }    
	 print "$"form"-Copy00-"$NF"\"/>"
	 print "</xsl:variable>"
}


/^cnum/ {
        print ""
	print "<xsl:variable name=\""form"-Copy00-line"$2"\">"
	print "<xsl:choose>"
        print "<xsl:when test=\""$4"\">"
	print "<xsl:value-of select=\""$5"\"/>"
        print "</xsl:when>"
	x = 6
	while ( x < NF )
	{
	    print "<xsl:when test=\""$(x)"\">"
	    print "<xsl:value-of select=\""$(x + 1)"\"/>"
	    print "</xsl:when>"
	    x=x+2
	}
  	print "<xsl:otherwise>"
        print "<xsl:value-of select=\""$NF"\"/>"
        print "</xsl:otherwise>"
        print "</xsl:choose>"
        print "</xsl:variable>"
}

/^const/ {
    print ""
    print "<xsl:variable name=\""form"-Copy00-line"$2"\" select=\"2000\"/>"
}

/^ctext/  {
        print ""
	print "<xsl:variable name=\""form"-Copy00-line"$2"\">"
	print "<xsl:choose>"
        print "<xsl:when test=\""$4"\">"
	print "<xsl:value-of select=\""$5"\"/>"
        print "</xsl:when>"
	x = 6
	while ( x < NF )
	{
	    print "<xsl:when test=\""$(x)"\">"
	    print "<xsl:value-of select=\""$(x + 1)"\"/>"
	    print "</xsl:when>"
	    x=x+2
	}
  	print "<xsl:otherwise>"
        print "<xsl:value-of select=\""$NF"\"/>"
        print "</xsl:otherwise>"
        print "</xsl:choose>"
        print "</xsl:variable>"

}

/^dlin/  {
    print ""
    print "<xsl:variable name=\""form"-Copy00-line"$2"\">"
    print "<xsl:choose>"
    print "<xsl:when test=\"string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='"form"-Copy00-line"$2"'])) != ''\">"
    print "<xsl:value-of select=\"format-number(//override[normalize-space(ancestor::taxline/linename)='"form"-Copy00-line"$2"'], '#####0')\"/>"
    print "</xsl:when>"
    print "<xsl:otherwise>"
    print "<xsl:value-of select=\"format-number(sum(//total[normalize-space(ancestor::taxline/linename)='"form"-Copy00-line"$2"']), '#####0')\"/>"
    print "</xsl:otherwise>"
    print "</xsl:choose>"
    print"</xsl:variable>"    
}
							      
/^dPull/ {
        print ""
	print "<xsl:variable name=\""form"-Copy00-line"$2"\">"
	print "<xsl:choose>"
        print "<xsl:when test=\"document('../Output/"$5"_Copy"$6".xml')\">"
	print "<xsl:value-of select=\"document('../Output/"$5"_Copy"$6".xml')//copy00"$7"\"/>"
        print "</xsl:when>"
	print "<xsl:otherwise>"
        print "<xsl:value-of select=\"0\"/>"
        print "</xsl:otherwise>"
        print "</xsl:choose>"
        print "</xsl:variable>"
}

/^subt0/  {
        print ""
        print "<xsl:variable name=\""form"-Copy00-line"$2"\">"
        print "<xsl:choose>"
        print "<xsl:when test=\""form"-Copy00-"$5" >= "form"-Copy00-"$4"\">"
        print "<xsl:value-of select=\"0\"/>"
        print "</xsl:when>"
        print "<xsl:otherwise>"
        print "<xsl:value-of select=\""form"-Copy00-"$4" - "form"-Copy00-"$5"\"/>"
        print "</xsl:otherwise>"
        print "</xsl:choose>"
        print "</xsl:variable>"
}

/^subtr/  {
       print ""
       print "<xsl:variable name=\""form"-Copy00-line"$2"\">"
       print "<xsl:value-of select=\"format-number($"form"-Copy00-"$4" -  $"form"-Copy00-"$5", '#####0')\"/>"
       print "</xsl:variable>"

}

/^tlin/  {
    print ""
    print "<xsl:variable name=\""form"-Copy00-line"$2"\">"
    print "<xsl:value-of select=\"document('../Data/"form"_Copy00_line"$2"_text.xml')//text\"/>"
    print "</xsl:variable>"
}

/^tPull/  {
    print ""
    print "<xsl:variable name=\""form"-Copy00-line"$2"\">"
    print "<xsl:choose>"
    print "<xsl:when test=\"document('../Data/"$5"_Copy00_line"$7"_text.xml')\">"
    print "<xsl:value-of select=\"document('../Data/"$5"_Copy00_line"$7"_text.xml')//text\"/>"
    print "</xsl:when>"
    print "<xsl:otherwise>"
    print "<xsl:value-of select=\"''\"/>"
    print "</xsl:otherwise>"
    print "</xsl:choose>"
    print "</xsl:variable>"
}

/^tCalc/ {
    print ""
    print "<xsl:variable name=\""form"-Copy00-line"$2"\">"
    print "<xsl:call-template name=\"taxCalc\">"
    print "<xsl:with-param name=\"filingStatus\" select=\"$"form"-Copy00-lineFS\"/>"
    print "<xsl:with-param name=\"lineToBeTaxed\" select=\"$"form"-Copy00-"$6"\"/>"
    print "</xsl:call-template>"
    print "</xsl:variable>"
}

/^mult/ {
    print ""
    print "<xsl:variable name=\""form"-Copy00-line"$2"\">"
    print "<xsl:value-of select=\"$"form"-Copy00-"$4" * $"form"-Copy00-"$5"\"/>"
    print "</xsl:variable>"
}

/^dRef/  {
    print ""
    print "<xsl:variable name=\""form"-Copy00-line"$2"\">"
    print "<xsl:value-of select=$"form"-Copy00-line"$7"\"/>"
    print "</xsl:variable>"
}

/^lgOf/  {
    print ""
    print "<xsl:variable name=\""form"-Copy00-line"$2"\">"
    print "<xsl:choose>"
    print "<xsl:when test=\"$"form"-Copy00-"$4" &gt;= $"form"-Copy00-"$5"\">"
    print "<xsl:value-of select=\"$"form"-Copy00-"$4"\"/>"
    print "</xsl:when>"
    print "<xsl:otherwise>"
    print "<xsl:value-of select=\"$"form"-Copy00-"$5"\"/>"
    print "</xsl:otherwise>"
    print "</xsl:choose>"
    print "</xsl:variable>"
}


/^smOf/ {
    print ""
    print "<xsl:variable name=\""form"-Copy00-line"$2"\">"
    print "<xsl:choose>"
    print "<xsl:when test=\"$"form"-Copy00-"$4" &gt;= $"form"-Copy00-"$5"\">"
    print "<xsl:value-of select=\"$"form"-Copy00-"$5"\"/>"
    print "</xsl:when>"
    print "<xsl:otherwise>"
    print "<xsl:value-of select=\"$"form"-Copy00-"$5"\"/>"
    print "</xsl:otherwise>"
    print "</xsl:choose>"
    print "</xsl:variable>"
}

/^div/  {
    print ""
    print "<xsl:variable name=\""form"-Copy00-line"$2"\">"
    print "<xsl:choose>"
    print "<xsl:when test=\"$"form"-Copy00-"$5" = 0\">" 
    priint "<xsl:value-of select=\"0\"/>"
    print "</xsl:when>"
    print "<xsl:otherwise>"
    print "<xsl:value-of select=\"$"form"-Copy00-"$4" div $"form"-Copy00-"$5"\"/>"
    print "</xsl:otherwise>"
    print "</xsl:choose>"
    print "</xsl:variable>"
}
