#makePreLot.awk
#This file takes $.sorted and creates a framework for $.pre and $.lot
#The input file $.sorted must have this structure:
#Col  !type    !name   !dummy     !left   !right   !align/top
#Col  !col     !a      !          !1.00   !2.00    !left
#a    !tlin    !TFNI   !John J    !       !        !1.00
#Col  !col     !b      !          !2.50   !3.50    !right
#b    !dlin    !01     !10000     !       !        !2.00
#b    !dlin    !02     !5000      !       !        !2.18
#b    !dlin    !03     !2000      !       !        !2.32
#Col  !col     !c      !          !4.00   !5.00    !left
#c    !tlin    !LN     !Smith     !       !        !1.00
#c    !tlin    !SSN    !030401234 !       !        !2.00
#etc.
#
#print "If you have a page on which you donot wish to enter anything,"
#print "use the following code for the page."
#    printf("%-6s\t!%-6s\t!%-6s\n", "xpgS", "2name","3BkgImage")                 
#    printf("%-6s\t!%-6s\t!%-6s\n", "pgS", "Single", "../Jpg/f1040sb-page-001.jpg")                       
#    printf("%-30s\n", " ")
#    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", "xcol",	"2name", "top", "align", "left", "right")   
#    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", "col", "", "-0.10", "left", "0.00", "8.50")    
#    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", "xcol", "2name", "3top", "4align", "5left", "6right")
#    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", "col", "a", "0.00", "", "", "")
#    printf("%-6s\t!%-6s\t!%-6s\t!%-18s\t!%-12s\t!%-6s\t!%-6s\n", "xtype", "2name", "3top", "4dummy", "5form", "6copy", "7line2")
#    printf("%-6s\t!%-6s\t!%-6s\t!%-18s\t!%-12s\t!%-6s\t!%-6s\n", "tlin", "", "", "", "", "", "")
#    printf("%-30s\n", "Endcol*******************")
#    printf("%-30s\n", "Endcol*******************")
#    printf("%-10s\n", "EndpgS")
#print "Note that you will have to change pgS to pgF or pgM or pgL"
#print "You will also have to change the BKgImage to the correct form and page."



BEGIN{
print "Copyright(C) 2019 Phillips Wedemeyer"
printf("%-30s\n", " ")
print "This file is part of a program called Tax-bash"
printf("%-30s\n", " ")
print "Tax-bash is free software: you can redistibute it and/or modify"
print "it under the terms of the FNU General Public License as published by"
print "the Free Software Foundation, either version 3 of the License, or"
print "(at your option) any later version."
printf("%-30s\n", " ")
print "Tax-bash is distributed in the hope that it will be useful,"
print "but WITHOUT ANY WARRANTY; without even the implied warranty of"
print "MERCHANTABILITY or FITNESS FOR A PARTICULAR PUPOSE.  See the"
print "GNU General Public License for more details."
printf("%-30s\n", " ")
print "You should have received a copy of the GNU General Public License"
print "along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>."
printf("%-30s\n", " ")
printf("%-30s\n", " ")
print "For direction on how to separate pages see ../notes."
print ""


    FS="[ \t]*!"
    OFS="\t!"
    
    printf("%-30s\n", " ")
    print "Form"

    printf("%-6s\t!%-6s\t!%-6s\n", "xpgS", "2name","3BkgImage")                 
    printf("%-6s\t!%-6s\t!%-6s\n", "pgS", "Single", "../Jpg/f1040sb-page-001.jpg")                       
    printf("%-30s\n", " ")
    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", "xcol",	"2name", "top", "align", "left", "right")   
    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", "col", "", "-0.10", "left", "0.00", "8.50")    
    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", "xcol", "2name", "3top", "4align", "5left", "6right")
    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", "col", "a", "0.00", "", "", "")
    printf("%-6s\t!%-6s\t!%-6s\t!%-18s\t!%-12s\t!%-6s\t!%-6s\n", "xtype", "2name", "3top", "4dummy", "5form", "6copy", "7line2")
    printf("%-6s\t!%-6s\t!%-6s\t!%-18s\t!%-12s\t!%-6s\t!%-6s\n", "tlin", "", "", "", "", "", "")
    printf("%-30s\n", "Endcol*******************")
    printf("%-30s\n", "Endcol*******************")
    printf("%-10s\n", "EndpgS")

    printf("%-30s\n", " ")
    printf("%-6s\t!%-6s\t!%-6s\n", "xpgS", "2name","3BkgImage")                 
    printf("%-6s\t!%-6s\t!%-6s\n", "pgS", "Single", "../Jpg/f1040sb-page-001.jpg")                       
    printf("%-30s\n", " ")
    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", "xcol",	"2name", "top", "align", "left", "right")   
    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", "col", "", "-0.10", "left", "0.00", "8.50")    
}

{
    if ($1 == LastCol ) {
	if ( $1 == "Col" ){
	    printf("%-30s\n", " ")
	    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", "xcol", "2name", "3top", "4align", "5left", "6right")
	    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", $2, $3, "0.00", $6, $4, $5)
	    printf("%-6s\t!%-6s\t!%-6s\t!%-18s\t!%-12s\t!%-6s\t!%-6s\n", "xtype", "2name", "3top", "4dummy", "5form", "6copy", "7line2")
	}
	else {
	    printf("%-6s\t!%-6s\t!%-6s\t!%-18s\t!%-12s\t!%-6s\t!%-6s\n", $2, $3, $6, $7, "", "", "")
	}
    }
    else if( $1 != LastCol ) {
        if ( $1 == "Col" ) {
	    if ( $3 == "name" ){
	    printf("%-30s\n", " ")
	    }
	    else {	
	    printf("%-30s\n", "Endcol*******************")
	    printf("%-30s\n", " ")
	    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", "xcol", "2name", "3top", "4align", "5left", "6right")
	    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", $2, $3, "0.00", $6, $4, $5)
	    printf("%-6s\t!%-6s\t!%-6s\t!%-18s\t!%-12s\t!%-6s\t!%-6s\n", "xtype", "2name", "3top", "4dummy", "5form", "6copy", "7line2")
	    }
	}
	else
	    printf("%-6s\t!%-6s\t!%-6s\t!%-18s\t!%-12s\t!%-6s\t!%-6s\n", $2, $3, $6, $7, "", "", "")
    }
	    LastCol = $1
}
END{
    printf("%-30s\n", "Endcol*******************")
    printf("%-30s\n", " ")    
    printf("%-30s\n", "Endcol*******************")
    printf("%-30s\n", " ")
    printf("%-10s\n", "EndpgS")
    print "EndForm"
}
