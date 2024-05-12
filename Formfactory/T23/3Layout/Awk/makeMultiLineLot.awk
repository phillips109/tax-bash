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
      FS = "[ \t]!"
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
      print "Form"
      } 

/^pgS/ {
       print ""
       print "type:"$1
       print "name:"$2
       print "bkgImage:"$3
       }
       
/^EndpgS/ {
	  print ""
	  print "EndpgS"
	  }


/^pgF/ {
       print ""
       print "type:"$1
       print "name:"$2
       print "bkgImage:"$3
       }
       
/^EndpgF/ {
	  print ""
	  print "EndpgF"
	  }

/^pgM/ {
       print ""
       print "type:"$1
       print "name:"$2
       print "bkgImage:"$3
       }
       
/^EndpgM/ {
	  print ""
	  print "EndpgM"
	  }

/^pgL/ {
       print ""
       print "type:"$1
       print "name:"$2
       print "bkgImage:"$3
       }
       
/^EndpgL/ {
	  print ""
	  print "EndpgL"
	  }


/^col/ {
       print ""
       print "type:"$1
       print "name:"$2
       print "left:"$5
       print "right:"$6
       print "width:"$6-$5
       print "background-color='pink'"
       print "font-size:12"
       print "font-family:Times"
       print "align:"$4
       print "top:"$3
       }
       
/^Endcol/ {
	  print ""
	  print "Endcol ************************************************"
	  }

/^nlin/ {
    
       print ""
       print "type:"$1
       print "name:"$2
       print "top:"$3
       print "height:0.15"
       print "color:green"
       print "text:"$4

}

/^text1/ {
	 print ""
	 print "type:"$1
	 print "name:"$2
	 print "top:"$3
	 print "height:0.15"
	 print "color:green"
	 print "text:"$4
	 
}

/^text2/ {
	 print ""
	 print "type:"$1
	 print "name:"$2
	 print "top:"$3
	 print "height:0.15"
	 print "color:green"
	 print "text:"$4

	 
}


/^tlin/ {
	 print ""
	 print "type:"$1
	 print "name:"$2
	 print "top:"$3
	 print "height:0.15"
	 print "color:blue"
	 print "dummy:"$4
}

/^tPull/ {
	 print ""
	 print "type:"$1
	 print "name:"$2
	 print "top:"$3
	 print "height:0.15"
	 print "color:purple"
	 print "form:"$5
	 print "copy:"$6
	 print "line2:"$7
	 }

/^tcalc/ {
	 print ""
	 print "type:"$1
	 print "name:"$2
	 print "top:"$3
	 print "height:0.15"
	 print "color:red"
	 print "testvalue:"$4
	 print "value1:"$5
         print "value2:"$6
	 
}


/^dlin/ {
	print ""
	print "type:"$1
	print "name:"$2
	print "top:"$3
	print "height:0.15"
	print "color:red"
	print "dummy:"$4
	print "form:"$5
	print "copy:"$6
	print "line2:"$7
}

/^cnum/ {
	print ""
	print "type:"$1
	print "name:"$2
	print "top:"$3
	print "height:0.15"
	print "color:red"
	print "dummy:"$4
	print "form:"$5
	print "copy:"$6
	print "line2:"$7
}

/^ctext/ {
	print ""
	print "type:"$1
	print "name:"$2
	print "top:"$3
	print "height:0.15"
	print "color:red"
	print "dummy:"$4
	print "form:"$5
	print "copy:"$6
	print "line2:"$7
}


/^dPull/ {
	 print ""
	 print "type:"$1
	 print "name:"$2
	 print "top:"$3
	 print "height:0.15"
	 print "color:purple"
	 print "dummy:"$4
	 print "form:"$5
	 print "copy:"$6
	 print "line2:"$7

	 }


/^ctxt/ {
	 print ""
	 print "type:"$1
	 print "name:"$2
	 print "top:"$3
	 print "height:0.15"
	 print "color:purple"
	 print "dummy:"$4
	 print "form:"$5
	 print "copy:"$6
	 print "line2:"$7

	 }


/^dRef/ {

    	 print ""
	 print "type:"$1
	 print "name:"$2
	 print "top:"$3
	 print "height:0.15"
	 print "color:green"
	 print "form:"$5
	 print "copy:"$6
	 print "line2:"$7

	 }

/^shwif/ {

	print ""
	print "type:"$1
	print "name:"$2
	print "top:"$3
	print "height:0.15"
	print "color:green"
	print "dummy:"$4
	print "tform:"$5
 	print "tcopy:"$6
 	print "tline:"$7
	print "if:"$8
	print "vform:"$9
	print "vcopy:"$10
	print "vline:"$11
	
	 }
/^xxxxadd/ {
	 print ""
	 print "type:"$1
	 print "name:"$2
	 print "top:"$3
	 print "height:0.15"
	 print "color:red"
	 print "dummy:"$4	 
	 
}
/^calc/ {
	 print ""
	 print "type:"$1
	 print "name:"$2
	 print "top:"$3
	 print "height:0.15"
	 print "color:red"
	 print "dummy:"$4	 
	 
}


/^xxxxsub/ {
	 print ""
	 print "type:"$1
	 print "name:"$2
	 print "top:"$3
	 print "height:0.15"
	 print "color:yellow"
	 print "dummy:"$4	 
	 
}

/^xxxsTo0/ {
	 print ""
	 print "type:"$1
	 print "name:"$2
	 print "top:"$3
	 print "height:0.15"
	 print "color:yellow"
	 print "dummy:"$4	 
	 
}

/^xxxsmallerOf/ {
	 print ""
	 PRINT "type:"$1
	 print "name:"$2
	 print "top=:"$3
	 print "height:0.15"
	 print "color:yellow"
	 print "dummy:"$4	 
	 
}

END {
    print "EndForm"
    }
