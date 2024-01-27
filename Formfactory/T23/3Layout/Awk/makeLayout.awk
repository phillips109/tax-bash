#Copyright(C) 2019 Phillips Wedemeyer
#
#This file is part of a program called Tax-bash.
#
#Tax-bash is free software: you can redistibute it and/or modify
#it under the terms of the FNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#Tax-bash is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PUPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>.
#


#makeLo -- Creates the ../Layouts/$1.lo file from an awk data file: $form.lot
#fields: 

BEGIN {
      FS = "\n"
      RS = ""
      print "<?xml version=\"1.0\"?>"
      print "<!--"
      print "Copyright(C) 2019 Phillips Wedemeyer"
      print ""
      print "This file is part of a program called Tax-bash."
      print ""
      print "Tax-bash is free software: you can redistibute it and/or modify"
      print "it under the terms of the FNU General Public License as published by"
      print "the Free Software Foundation, either version 3 of the License, or"
      print "(at your option) any later version."
      print ""
      print "Tax-bash is distributed in the hope that it will be useful,"
      print "but WITHOUT ANY WARRANTY; without even the implied warranty of"
      print "MERCHANTABILITY or FITNESS FOR A PARTICULAR PUPOSE.  See the"
      print "GNU General Public License for more details."
      print ""
      print "You should have received a copy of the GNU General Public License"
      print "along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>."
      print "-->"
      print ""
      print "<Form>"
      } 

/^type:pgS/ {
       print ""
       z = split($2, two, ":")
       print "<pgS name='"two[2]"'"
       z = split($3, three, ":")
       print "bkgImage='"three[2]"'>"
       }
       
/^EndpgS/ {
	  print ""
	  print "</pgS>"
	  }


/^type:pgF/ {
       print ""
       z = split($2, two, ":")	
       print "<pgF name='"two[2]"'"
       z = split($3, three, ":")
       print "bkgImage='"three[2]"'>"
       }
       
/^EndpgF/ {
	  print ""
	  print "</pgF>"
	  }

/^type:pgM/ {
       print ""
       z = split($2, two, ":")
       print "<pgM name='"$2"'"
       z = split($3, three, ":")
       print "bkgImage='"three[2]"'>"
       }
       
/^EndpgM/ {
	  print ""
	  print "</pgM>"
	  }

/^type:pgL/ {
       print ""
       z = split($2, two, ":")
       print "<pgL name='"two[2]"'"
       z = split($3, three, ":")
       print "bkgImage='"three[2]"'>"
       }
       
/^EndpgL/ {
	  print ""
	  print "</pgL>"
	  }


/^type:col/ {
       print ""
       z = split($2, two, ":")
       print "<col name='"two[2]"'"
       z = split($3, three, ":")
       print "left='"three[2]"in'"
       z = split($4, four, ":")
       print "right='"four[2]"in'"
       z = split($5, five, ":")
       print "width='"five[2]"in'"
       print "background-color='pink'"
       z = split($7, seven, ":")
       print "font-size='"seven[2]"pt'"
       z = split($8, eight, ":")
       print "font-family='"eight[2]"'"
       z = split($9, nine, ":")
       print "text-align='"nine[2]"'"
       z = split($10, ten, ":")
       print "top='"ten[2]"in'>"
       }
       
/^Endcol/ {
	  print ""
	  print "</col>"
	  print "*******************************************************"
	  }

/^type:nlin/ {
	 print ""
	 z = split($2, two, ":")
	 print "<nlin name='"two[2]"'"
	 z = split($3, three, ":")
	 print "top='"three[2]"in'"
	 z = split($4, four, ":")
	 print "height='"four[2]"in'"
	 z = split($5, five, ":")
	 print "color='"five[2]"'>"
	 z = split($6, six, ":")
	 print "<text>"six[2]"</text>"
	 print "</nlin>"
	 
}

/^type:text1/ {
	 print ""
	 z = split($2, two, ":")
	 print "<text1 name='"two[2]"'"
	 z = split($3, three, ":")
	 print "top='"three[2]"in'"
	 z = split($4, four, ":")
	 print "height='"four[2]"in'"
	 z = split($5, five, ":")
	 print "color='"five[2]"'>"
	 z = split($6, six, ":")
	 print "<text>"six[2]"</text>"
	 print "</text1>"
	 
}

/^type:text2/ {
	 print ""
	 z = split($2, two, ":")
	 print "<text2 name='"two[2]"'"
	 z = split($3, three, ":")
	 print "top='"three[2]"in'"
	 z = split($4, four, ":")
	 print "height='"four[2]"in'"
	 z = split($5, five, ":")
	 print "color='"five[2]"'>"
	 z = split($6, six, ":")
	 print "<text>"six[2]"</text>"
	 print "</text2>"
	 
}


/^type:tlin/ {
	 print ""
	 z = split($2, two, ":")
	 print "<tlin name='"two[2]"'"
	 z = split($3, three, ":")
	 print "top='"three[2]"in'"
	 z = split($4, four, ":")
	 print "height='"four[2]"in'"
	 z = split($5, five, ":")
	 print "color='"five[2]"'>"
	 z = split($6, six, ":")
	 print "<text>"six[2]"</text>"
	 print "<blank></blank>"
	 print "</tlin>"
	 
}

/^type:tPull/ {
	 print ""
	 z = split($2, two, ":")
	 print "<tPull name='"two[2]"'"
	 z = split($3, three, ":")
	 print "top='"three[2]"in'"
	 z = split($4, four, ":")
	 print "height='"four[2]"in'"
	 z = split($5, five, ":")
	 print "color='"five[2]"'>"
	 z = split($6, six, ":")
	 print "<form>"six[2]"</form>"
	 z = split($7, seven, ":")
	 print "<copy>"seven[2]"</copy>"
	 z = split($8, eight, ":")
	 print "<line2>"eight[2]"</line2>"
	 print "</tPull>"
	 }

/^type:dlin/ {
	print ""
	z = split($2, two, ":")
	print "<dlin number='"two[2]"'"
	z = split($3, three, ":")
	print "top='"three[2]"in'"
	z = split($4, four, ":")
	print "height='"four[2]"in'"
	z = split($5, five, ":")
	print "color='"five[2]"'>"
	z = split($6, six, ":")
	print "<dummy>"six[2]"</dummy>"
	z = split($7, seven, ":")
	print "<form>"seven[2]"</form>"
	z = split($8, eight, ":")
	print "<copy>"eight[2]"</copy>"
	z = split($9, nine, ":")
	print "<line2>"nine[2]"</line2>"
	print "<blank></blank>"
	print "</dlin>"
	
}


/^type:dPull/ {
	 print ""
	 z = split($2, two, ":")
	 print "<dPull name='"two[2]"'"
	 z = split($3, three, ":")
	 print "top='"three[2]"in'"
	 z = split($4, four, ":")
	 print "height='"four[2]"in'"
	 z = split($5, five, ":")
	 print "color='"five[2]"'>"
	 z = split($6, six, ":")
	 print "<dummy>"six[2]"</dummy>"
	 z = split($7, seven, ":")
	 print "<form>"seven[2]"</form>"
	 z = split($8, eight, ":")
	 print "<copy>"eight[2]"</copy>"
	 z = split($9, nine, ":")
	 print "<line2>"nine[2]"</line2>"
	 print "</dPull>"
	 }

/^type:dRef/ {

	 print ""
	 z = split($2, two, ":")
	 print "<dRef number='"two[2]"'"
	 z = split($3, three, ":")
	 print "top='"three[2]"in'"
	 z = split($4, four, ":")
	 print "height='"four[2]"in'"
	 z = split($5, five, ":")
	 print "color='"five[2]"'>"
	 z = split($6, six, ":")
	 print "<form>"six[2]"</form>"
	 z = split($7, sseven, ":")
	 print "<form>"seven[2]"</form>"
	 z = split($8, eight, ":")
	 print "<form>"eight[2]"</form>"
	 print "</dRef>"
	 }

/^type:shwif/ {

	print ""
	z = split($2, two, ":")
	print "<shwif number='"two[2]"'"
	z = split($3, three, ":")
	print "top='"three[2]"in'"
	z = split($4, four, ":")
	print "height='"four[2]"in'"
	z = split($5, five, ":")
	print "color='"five[2]"'>"
	z = split($6, six, ":")
	print "<dummy>"six[2]"</dummy>"
	z = split($7, seven, ":")
	print "<tform>"seven[2]"</tform>"
	z = split($8, eight, ":")
 	print "<tcopy>"eight[2]"</tcopy>"
	z = split($9, nine, ":")
 	print "<tline>"nine[2]"</tline>"
	z = split($10, ten, ":")
	print "<if>"ten[2]"</if>"
	z = split($11, eleven, ":")
	print "<vform>"eleven[2]"</vform>"
	z = split($12, twelve, ":")
	print "<vcopy>"twelve[2]"</vcopy>"
	z = split($13, thirteen, ":")
	print "<vline>"thirteen[2]"</vline>"

	print "</shwif>"
	 }

/^type:add/ {
	 print ""
	 z = split($2, two, ":")
	 print "<add number='"two[2]"'"
	 z = split($3, three, ":")
	 print "top='"three[2]"in'"
	 z = split($4, four, ":")
	 print "height='"four[2]"in'"
	 z = split($5, five, ":")
	 print "color='"five[2]"'>"
	 z = split($6, six, ":")
	 print "<dummy>"six[2]"</dummy>"	 
	 print "</add>"
	 
}
/^type:calc/ {
	 print ""
	 z = split($2, two, ":")
	 print "<calc number='"two[2]"'"
	 z = split($3, three, ":")
	 print "top='"three[2]"in'"
	 z = split($4, four, ":")
	 print "height='"four[2]"in'"
	 z = split($5, five, ":")
	 print "color='"five[2]"'>"
	 z = split($6, six, ":")
	 print "<dummy>"six[2]"</dummy>"	 
	 print "</calc>"
	 
}

/^type:cnum/ {
	 print ""
	 z = split($2, two, ":")
	 print "<calc number='"two[2]"'"
	 z = split($3, three, ":")
	 print "top='"three[2]"in'"
	 z = split($4, four, ":")
	 print "height='"four[2]"in'"
	 z = split($5, five, ":")
	 print "color='"five[2]"'>"
	 z = split($6, six, ":")
	 print "<dummy>"six[2]"</dummy>"	 
	 print "</calc>"
	 
}
/^type:ctext/ {
	 print ""
	 z = split($2, two, ":")
	 print "<calc number='"two[2]"'"
	 z = split($3, three, ":")
	 print "top='"three[2]"in'"
	 z = split($4, four, ":")
	 print "height='"four[2]"in'"
	 z = split($5, five, ":")
	 print "color='"five[2]"'>"
	 z = split($6, six, ":")
	 print "<dummy>"six[2]"</dummy>"	 
	 print "</calc>"
	 
}


/^type:tcalc/ {
	 print ""
	 z = split($2, two, ":")
	 print "<calc number='"two[2]"'"
	 z = split($3, three, ":")
	 print "top='"three[2]"in'"
	 z = split($4, four, ":")
	 print "height='"four[2]"in'"
	 z = split($5, five, ":")
	 print "color='"five[2]"'>"
	 z = split($6, six, ":")
	 print "<dummy>"six[2]"</dummy>"	 
	 print "</calc>"
	 
}


/^type:sub/ {
	 print ""
	 z = split($2, two, ":")
	 print "<sub number='"two[2]"'"
	 z = split($3, three, ":")
	 print "top='"three[2]"in'"
	 z = split($4, four, ":")
	 print "height='"four[2]"in'"
	 z = split($5, five, ":")
	 print "color='"five[2]"'>"
	 z = split($6, six, ":")
	 print "<dummy>"six[2]"</dummy>"	 
	 print "</sub>"
	 
}

/^type:sTo0/ {
	 print ""
	 z = split($2, two, ":")
	 print "<sTo0 number='"two[2]"'"
	 z = split($3, three, ":")
	 print "top='"three[2]"in'"
	 z = split($4, four, ":")
	 print "height='"four[2]"in'"
	 z = split($5, five, ":")
	 print "color='"five[2]"'>"
	 z = split($6, six, ":")
	 print "<dummy>"six[2]"</dummy>"	 
	 print "</sTo0>"
	 
}

/^type:smallerOf/ {
	 print ""
	 z = split($2, two, ":")
	 print "<smallerOf number='"two[2]"'"
	 z = split($3, three, ":")
	 print "top='"three[2]"in'"
	 z = split($4, four, ":")
	 print "height='"four[2]"in'"
	 z = split($5, five, ":")
	 print "color='"five[2]"'>"
	 z = split($6, six, ":")
	 print "<dummy>"six[2]"</dummy>"	 
	 print "</smallerOf>"
	 
}

END {
    print "</Form>"
    }
