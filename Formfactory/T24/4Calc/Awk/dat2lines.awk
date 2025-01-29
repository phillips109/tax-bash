#dat2linesawk
#This file converts .dat to ./Lines/l$1_Copy00.xml
#It replaces ../Make/makeLinesFiles.xsl
#It is called with the name of the form as a parameter with -v.
#awk -f dat2lines.awk Form=Form1040 inputfile

#Copyright (C) 2024 Phillips Wedemeyer
#
#
#
BEGIN {
    FS = "\n"
    RS = ""
    print "<!--"
    print ""
    print "Copyright (C) 2024 Phillips Wedemeyer"
    print "This file is part of a program called Tax-bash"
    print "Tax-bash is free software: you can redistribute it and/or modify"
    print "it under the terms of the GNU General Public Llicense as published by"
    print "the Free Software Foundataion, either version 3 of the License, or"
    print "(at your option) any later version."
    print "Tax-bash is distributed in the hope that it will be useful,"
    print "but without any warranty; without event the implied warranty of"
    print "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the"
    print "GNU General Public License for more details."
    print "You should have received a copy of the GNU General Public License"
    print "along with Tax-bash.  If not, see >https://www.gnu.org/licenses/>."
    print "-->"
    print ""
    print "<Form xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" name=\""form"-Copy00\">"
}

/^tlin/ || /^tPull/ || /^text/ || /^ctext/ || /^c2text/ || /^textNav/ || /^dataNav/ || /^no/ || /^yearOfSale/ {
    print ""
    print "<copy00line"$2" color=\"blue\">"
    print "<xsl:value-of select=\"$"form"-Copy00-line"$2"\"/>"
    print "</copy00line"$2">"
}

/^dlin/ || /^dPull/ || /^dRef/ || /^addit/ || /^subtr/ || /^subt0/ || /^mult/ || /^rmult/ || /^div/ || /^smOf/ || /^lgOf/ || /^cnum/ || /c2num/ || /^choice/ || /cFS/ || /^const/ || /^tCalc/ {
    print ""
    print "<copy00line"$2" color=\"red\">"
    print "<xsl:value-of select=\"format-number($"form"-Copy00-line"$2", '#####0')\"/>"
    print "</copy00line"$2">"

}
END {
    print "</Form>"
}
