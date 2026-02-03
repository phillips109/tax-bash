#makeLines.awk
#makes the /Line/l$1_Copy00.xml file
#
#
#Copyright(C) 2023, 2024 Phillips Wedemeyer
#
#This file is part of a program called Tax-bash.
#
#Tax-bash is free software: you can redistibute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#Tax-bash is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>.
#
#

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
