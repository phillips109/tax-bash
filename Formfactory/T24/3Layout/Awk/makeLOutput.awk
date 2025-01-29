#This file is Tax-bash/Formfactory/T??/3Layout/Awk/makeLOutput.awk

#Copyrigh(C) 2023, 2024 Phillips Wedemeyer
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



# makeOutput.awk -- Creates the ../Output/$1_Copy$2.xml file from an awk data file ../MultiLine/$1-Copy$2.multi
#fields: type:number:title:format:instructions:IRSinstructions:1stTerm:2ndTerm:addendum

BEGIN {
      FS = "\n"
      RS = ""
      print "<?xml version='1.0' encoding='UTF-8'?>"
      print "<!--"
      print "Copyrigh(C) 2023, 2024 Phillips Wedemeyer"
      print ""
      print "This file is part of a program called Tax-bash."
      print ""
      print "Tax-bash is free software: you can redistibute it and/or modify"
      print "it under the terms of the GNU General Public License as published by"
      print "the Free Software Foundation, either version 3 of the License, or"
      print "(at your option) any later version."
      print ""
      print "Tax-bash is distributed in the hope that it will be useful,"
      print "but WITHOUT ANY WARRANTY; without even the implied warranty of"
      print "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the"
      print "GNU General Public License for more details."
      print ""
      print "You should have received a copy of the GNU General Public License"
      print "along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>."
      print "-->"
      print ""
      print "<IRSForms>"
      print "<Form>"
} 

	
/^type:tlin/ {
    z = split($2, two, ":" )
    z = split($5, five, ":" )
    z = split($6, six, ":" )
    print "<copy"copy"line"two[2]" color='"five[2]"'>"six[2]"</copy"copy"line"two[2]">"
	  }


/^tPull/ {
    z = split($2, two, ":" )
    z = split($5, five, ":" )
    z = split($6, six, ":" )
    print "<copy"copy"line"two[2]" color='"five[2]"'>"six[2]"</copy"copy"line"two[2]">"
	  }

/^type:tcalc/ {
    z = split($2, two, ":" )
    z = split($5, five, ":" )
    z = split($6, six, ":" )
    print "<copy"copy"line"two[2]" color='"five[2]"'>"six[2]"</copy"copy"line"two[2]">"
}

/^type:dlin/ {
    z = split($2, two, ":" )
    z = split($5, five, ":" )
    z = split($6, six, ":" )
    print "<copy"copy"line"two[2]" color='"five[2]"'>"six[2]"</copy"copy"line"two[2]">"
	  }

/^type:cnum/ {
    z = split($2, two, ":" )
    z = split($5, five, ":" )
    z = split($6, six, ":" )
    print "<copy"copy"line"two[2]" color='"five[2]"'>"six[2]"</copy"copy"line"two[2]">"
	  }

/^type:ctext/ {
    z = split($2, two, ":" )
    z = split($5, five, ":" )
    z = split($6, six, ":" )
    print "<copy"copy"line"two[2]" color='"five[2]"'>"six[2]"</copy"copy"line"two[2]">"
	  }


/^type:dPull/ {
    z = split($2, two, ":" )
    z = split($5, five, ":" )
    z = split($6, six, ":" )
    print "<copy"copy"line"two[2]" color='"five[2]"'>"six[2]"</copy"copy"line"two[2]">"
}

/^type:ctxt/ {
    z = split($2, two, ":" )
    z = split($5, five, ":" )
    z = split($6, six, ":" )
    print "<copy"copy"line"two[2]" color='"five[2]"'>"six[2]"</copy"copy"line"two[2]">"
}

/^type:dRef/ {
    z = split($2, two, ":" )
    z = split($5, five, ":" )
    z = split($6, six, ":" )
    print "<copy"copy"line"two[2]" color='"five[2]"'>"six[2]"</copy"copy"line"two[2]">"
}
/^type:calc/ {
    z = split($2, two, ":" )
    z = split($5, five, ":" )
    z = split($6, six, ":" )
    print "<copy"copy"line"two[2]" color='"five[2]"'>"six[2]"</copy"copy"line"two[2]">"
}


/^type:text/ {
    z = split($2, two, ":" )
    z = split($5, five, ":" )
    z = split($6, six, ":" )
    print "<copy"copy"line"two[2]" color='"five[2]"'>"six[2]"</copy"copy"line"two[2]">"
}



/^type:ckif/ {
    z = split($2, two, ":" )
    z = split($5, five, ":" )
    z = split($6, six, ":" )
    print "<copy"copy"line"two[2]" color='"five[2]"'>"six[2]"</copy"copy"line"two[2]">"
}

END {
    print "</Form>"
    print "</IRSForms>"
    }





/^number/ {
    z = split($2, two, ":" )
    z = split($5, five, ":" )
    z = split($6, six, ":" )
    print "<copy"copy"line"two[2]" color='"five[2]"'>"six[2]"</copy"copy"line"two[2]">"
	  }
		
/^sub/ {
    z = split($2, two, ":" )
    z = split($5, five, ":" )
    z = split($6, six, ":" )
    print "<copy"copy"line"two[2]" color='"five[2]"'>"six[2]"</copy"copy"line"two[2]">"
	       }


/^add/    { 
	       print "<copy"copy"line"$2" color='"$5"'>"$6"</copy"copy"line"$2">"     
	       }

/^sTo0/ {
	       print "<copy"copy"line"$2" color='"$5"'>"$6"</copy"copy"line"$2">"     
	       }

/^smallerOf/    { 
	       print "<copy"copy"line"$2" color='"$5"'>"$6"</copy"copy"line"$2">"     
	       }




	
