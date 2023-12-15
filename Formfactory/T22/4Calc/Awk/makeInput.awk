# makeInput -- Creates the i$form.xml file from an awk data file
#fields: type:number:title:format:instructions:IRSinstructions:1stTerm:2ndTerm:addendum

#10/20/2023 changed FS from "[ \t]*!" to "\n"(new line); changed RS from "\n" to ""(blank line)

BEGIN {
      FS = "\n"
      RS = ""
      print "<Form name='"$1"'>"
      } 

/^text/ {
	 print ""
	 print "<line number='"$2"'"
	 print " color='blue'>"
	 print "<title>"$3"</title>"
	 print "<type>"$1"</type>"
	 print "<dummy>"$4"</dummy>"
	 print "</line>"
}

/^tlin/ {
	 print "" 
	 print "<line name='"$2"'"
	 print " color='blue'>"
	 print "<type>"$1"</type>"
	 print "<text>"$4"</text>"
	 print "<form>"$5"</form>"
	 print "<copy>"$6"</copy>"
	 print "<line2>"$7"</line2>"
	 print "</line>"	 
	 }

/^tPull/ {
	 print "" 
	 print "<line number='"$2"'"
	 print " color='blue'>"
	 print "<type>"$1"</type>"
	 print "<form>"$5"</form>"
	 print "<copy>"$6"</copy>"
	 print "<line2>"$7"</line2>"
	 print "</line>"	 
	 }


/^dlin/ {
	  print ""
	  print "<dlin number='"$2"'"
	  print " color='red'>"
	  print "<title>""</title>"
          print "<type>"$1"</type>"
	  print "<format>"$3"</format>"
	  print "<override>"$4"</override>"
	  print "<blank></blank>"
	  print "</dlin>"
	  }

/^const/  {
	  print ""
	  print "<line number='"$2"'"
	  print " color='blue'>"
	  print "<type>"$1"</type>"
	  print "<format>"$3"</format>"
	  print "<value>"$4"</value>"
	  print "</line>"
	  }

/^stud/	  {
	  print ""
	  print "<line number='"$2"'"
	  print " color='blue'>"
	  print "<type>"$1"</type>"
	  print "<format>"$3"</format>"
	  print "<dummy>"$4"</dummy>"
	  print "</line>"
	  }


/^dPull/ {
	 print "" 
	 print "<line number='"$2"'"
	 print " color='purple'>"
	 print "<title>""</title>"
	 print "<type>"$1"</type>"
	 print "<format>"$3"</format>"
	 print "<dummy>"$4"</dummy>"
	 print "<form>"$5"</form>"
	 print "<copy>"$6"</copy>"
	 print "<line2>"$7"</line2>"
	 print "</line>"	 
	 }

/^dRef/ {
	 print "" 
	 print "<line number='"$2"'"
	 print " color='magenta'>"
	 print "<title>"$4"</title>"
	 print "<type>"$1"</type>"
	 print "<format>"$3"</format>"
	 print "<form>"$5"</form>"
	 print "<copy>"$6"</copy>"
	 print "<line2>"$7"</line2>"
	 print "</line>"	 
	 }

/^addit/ {
            print "" 
	    print "<line number='"$2"'"
	    print " color='green'>"
	    print "<type>"$1"</type>"
	    print "<format>"$3"</format>"
	    print "<augend>"$4"</augend>"
	    x = 5
	    while ( x <= NF )
	    {	 
	    		print "<addend>"$(x)"</addend>"
			x=x+1
	    }
	    print "</line>"
	  }

/^chooseChoose/ {
            print "" 
	    print "<line number='"$2"'"
	    print " color='green'>"
	    print "<type>"$1"</type>"
	    print "<format>"$4"</format>"
	    x = 5
	    while ( x <= NF )
	    {	 
		print "<testa>"$(x)"</testa>"
		print "<testb>"$(x+1)"</testb>"
		print "<value>"$(x+2)"</value>"		 
			x=x+3
	    }
	    print "</line>"
	  }



/^subtr/ {
	       print ""
	       print "<line number='"$2"'"
	       print " color='purple'>"
	       print "<type>"$1"</type>"
	       print "<format>"$3"</format>"
	       print "<minuend>"$4"</minuend>"
	       print "<subtrahend>"$5"</subtrahend>"
	       print "</line>"	       
	       }

/^subt0/ {
		     print ""
		     print "<line number='"$2"'"
		     print " color='cyan'>"
		     print "<type>"$1"</type>"
		     print "<format>"$3"</format>"
		     print "<minuend>"$4"</minuend>"
		     print "<subtrahend>"$5"</subtrahend>"
		     print "</line>"
		     }

/^mult/ {
		  print ""
		  print "<line number='"$2"'"
		  print " color='red'>"
		  print "<type>"$1"</type>"	
		  print "<format>"$3"</format>"
		  print "<multiplicand>"$4"</multiplicand>"
		  print "<multiplier>"$5"</multiplier>"
		  print "</line>"
		  }

/^rmult/ {
		  print ""
		  print "<line number='"$2"'"
		  print " color='orange'>"
		  print "<type>"$1"</type>"	
		  print "<format>"$3"</format>"
		  print "<multiplicand>"$4"</multiplicand>"
		  print "<multiplier>"$5"</multiplier>"
		  print "</line>"
		  }


/^div/ {
		  print ""
		  print "<line number='"$2"'"
		  print " color='orange'>"
		  print "<type>"$1"</type>"	
		  print "<format>"$3"</format>"
		  print "<dividend>"$4"</dividend>"
		  print "<divisor>"$5"</divisor>"
		  print "</line>"
		  }

/^smOf/      {
	    	  print ""
		  print "<line number='"$2"'"
		  print " color='blue'>"
		  print "<type>"$1"</type>"	
		  print "<format>"$3"</format>"
		  print "<first>"$4"</first>"
		  print "<second>"$5"</second>"
		  print "</line>"
		  }

/^lgOf/      {
	    	  print ""
		  print "<line number='"$2"'"
		  print " color='blue'>"
		  print "<type>"$1"</type>"	
		  print "<format>"$3"</format>"
		  print "<first>"$4"</first>"
		  print "<second>"$5"</second>"
		  print "</line>"
		  }

/^ctext/	  {
		  print ""
		  print "<line number='"$2"'"
		  print " color='blue'>"
		  print "<type>"$1"</type>"
		  print "<format>"$3"</format>"
		  print "<test>"$4"</test>"
		  print "<value1>"$5"</value1>"
	  	  print "<value2>"$6"</value2>"
		  print "</line>"
		  }

/^cnum/	  {
		  print ""
		  print "<line number='"$2"'"
		  print " color='red'>"
		  print "<type>"$1"</type>"
		  print "<format>"$3"</format>"
		  print "<testvalue>"$4"</testvalue>"
		  print "<value1>"$5"</value1>"
	  	  print "<value2>"$6"</value2>"
		  print "</line>"
		  }

/^cFS/	  {
		  print ""
		  print "<line number='"$2"'"
		  print " color='red'>"
		  print "<type>"$1"</type>"
		  print "<format>"$3"</format>"
		  print "<valueMFJ>"$4"</valueMFJ>"
	  	  print "<valueS>"$5"</valueS>"
		  print "<valueHOH>"$6"</valueHOH>"
		  print "<valueQW>"$7"</valueQW>"
		  print "<valueAll>"$8"</valueAll>"
		  print "<valueNone>"$9"</valueNone>"
		  print "<valueSome>"$10"</valueSome>"
		  print "</line>"
		  }

/^tCalc/  {
	    	  print ""
		  print "<line number='"$2"'"
		  print " color='blue'>"
		  print "<type>"$1"</type>"	
		  print "<format>"$3"</format>"
		  print "<form>"$4"</form>"
		  print "<copy>"$5"</copy>"
		  print "<line2>"$6"</line2>"
		  print "</line>"
		  }


END {
    print "</Form>"
    }
