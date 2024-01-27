BEGIN {
    FS = "\n"; RS = "" 
}

/^form/ {
    print "<Form xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" name=\"Form" $2 "-Copy" $3 "\">"
    print ""
}

/^addit/  {
    print "<copy" copy "line" $2 " color=\"green\">"
    print "<xsl:value-of select=\"format-number($" form "-Copy" copy "-line" $2 ", '#####0')\"/>"
    print "</xsl:copy" copy "line" $2 ">"
    print ""
}

/^const/  {
    print "<copy" copy "line" $2 " color=\"green\">"
    print "<xsl:value-of select=\"format-number($" form "-Copy" copy "-line" $2 ", '#####0')\"/>"
    print "</xsl:copy" copy "line" $2 ">"
    print ""
}

/^dlin/  {
    print "<copy" copy "line" $2 " color=\"green\">"
    print "<xsl:value-of select=\"format-number($" form "-Copy" copy "-line" $2 ", '#####0')\"/>"
    print "</xsl:copy" copy "line" $2 ">"
    print ""
}

/^dPull/  {
    print "<copy" copy "line" $2 " color=\"green\">"
    print "<xsl:value-of select=\"format-number($" form "-Copy" copy "-line" $2 ", '#####0')\"/>"
    print "</xsl:copy" copy "line" $2 ">"
    print ""
}

/^subtr/  {
    print "<copy" copy "line" $2 " color=\"green\">"
    print "<xsl:value-of select=\"format-number($" form "-Copy" copy "-line" $2 ", '#####0')\"/>"
    print "</xsl:copy" copy "line" $2 ">"
    print ""
}

/^subt0/  {
    print "<copy" copy "line" $2 " color=\"green\">"
    print "<xsl:value-of select=\"format-number($" form "-Copy" copy "-line" $2 ", '#####0')\"/>"
    print "</xsl:copy" copy "line" $2 ">"
    print ""
}

/^tCalc/  {
    print "<copy" copy "line" $2 " color=\"green\">"
    print "<xsl:value-of select=\"format-number($" form "-Copy" copy "-line" $2 ", '#####0')\"/>"
    print "</xsl:copy" copy "line" $2 ">"
    print ""
}

/^tlin/  {
    print "<copy" copy "line" $2 " color=\"blue\">"
    print "<xsl:value-of select=\"$" form "-Copy" copy "-line" $2 "\"/>"
    print "</xsl:copy" copy "line" $2 ">"
    print ""
}

/^tPull/  {
    print "<copy" copy "line" $2 " color=\"blue\">"
    print "<xsl:value-of select=\"$" form "-Copy" copy "-line" $2 "\"/>"
    print "</xsl:copy" copy "line" $2 ">"
    print ""
}

END {
    print "</Form>"
}
