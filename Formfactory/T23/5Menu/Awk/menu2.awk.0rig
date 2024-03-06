#menu2.awk -- To create menu using awk
#input is *.txt
BEGIN {
    FS= "[ \t]*!"
    count=0
    number=0
}

  /.*/    {
    lin[NR]= $0
  }
  
  /^tlin/ {
 	    count++
	    tcol2[count] = length($2)
	    tlins[count] = $0
	    sortd(tcol2,count)
#	    print tcol2[1], tcol2[2], tcol2[3], tcol2[4], tcol2[5], tcol2[6],
	    tmax=tcol2[1]
	    tlin1[count] = $1
	    tlin2[count] = $2
	    tlin3[count] = $3
	    tlin4[count] = $4
#	    tlin5[count] = $5
#	    tlin6[count] = $6
  }

    /^dlin/ {
 	    number++
	    ncol2[number] = length($2)
	    nums[number] = $0
	    sortd(ncol2,number)
#	    print ncol2[1], ncol2[2], ncol2[3], ncol2[4], ncol2[5], ncol2[6],
	    nmax=ncol2[1]
	    dlin1[number] = $1
	    dlin2[number] = $2
	    dlin3[number] = $3
	    dlin4[number] = $4
#	    num5[number] = $5
#	    num6[number] = $6

    }
  
  
END{

#        print lin[10]
#        print tPulls[116]
#   	print nums[number]
#    copy="$2"
#    print copy
#    form="Form1040"
#    printf("%s\n", form )
#	 print form
	 
printf( "%s\n", "set_"form"_line_data_choice() {" )
printf( "%s\n", "while true;" )
printf( "%s\n", "do" )
printf( "%s\n", "clear" )
printf( "%s", "echo ")
printf( "%s\n",	"\"Lines in "form" in which to enter or edit data:\"" )
printf( "%s\n", "echo" )

	
	if ( tmax >= nmax )
	    max=tmax
	else
	    max=nmax
	
	
	count=0
	number=0
	for (i=1; i <= NR; i++) {

	    if ( substr(lin[i],1,4) == "tlin" ){
	    count++
	    printf("%*s", -5, "echo \"" )
	    printf("%*s", -max,  tlin2[count])
	    printf("%*s", 5, ")    ")
	    printf("%*s", -35, tlin4[count])
	    printf("%s\n", "\"")
	    }

	    else if( substr(lin[i],1,4) == "dlin" ){
	    number++
	    printf("%*s", -5, "echo \"" )
	    printf("%*s", -max,  dlin2[number])
	    printf("%*s", 5, ")    ")
	    printf("%*s", -35, dlin4[number])
	    printf("%s\n", "\"")
	    }
	}

	printf("%s\n", "echo" )
	printf("%*s", -5, "echo \"" )
	printf("%*s", max,  "q")
	printf("%*s", 5, ")    ")
	printf("%*s\n", -30, "Return to Previous Menu\"")

	printf("%s\n", "echo" )
	printf("%s\n", "echo \"Please enter the letter(s) of your choice then press return.\"" )
	printf("%s\n", "     read "form"_line_data_choice" )
	printf("%s\n", "echo" )
	printf("%s\n", "     case $"form"_line_data_choice in" )

	count=0
	number=0
	for (i=1; i <= NR; i++) {

	    if ( substr(lin[i],1,4) == "tlin" ){
	    count++
#	    printf("%*s", -5, "echo " )
	    printf("%*s", -max,  tlin2[count])
	    printf("%*s", 5, ")    ")
	    printf("%*s", -21, "set_line_menu_text")
	    printf("%*s", 3, "$1 ")
	    printf("%*s", 3, "$2 ")
	    printf("%*s", 5, " line")
	    printf("%*s", -30, tlin2[count])
	    printf("%*s", 3, "14")
	    printf("%s\n", ";;")
	    }

	    else if( substr(lin[i],1,4) == "dlin" ){
	    number++
#	    printf("%*s", -5, "echo " )
	    printf("%*s", -max,  dlin2[number])
	    printf("%*s", 5, ")    ")
	    printf("%*s", -21, "set_line_menu_number")
	    printf("%*s", 3, "$1 ")
	    printf("%*s", 3, "$2 ")
	    printf("%*s", 5, " line")	    
	    printf("%*s", -30, dlin2[number])
	    printf("%*s", 3, "14")
	    printf("%s\n", ";;")
	    }
	}

#	printf("%s\n", "echo" )
#	printf("%*s", -5, "echo " )
	printf("%*s", -max,  "q")
	printf("%*s", 5, ")    ")
	printf("%*s\n", -30, "break;;")
	printf("%s\n", "esac")
	printf("%s\n", "done")
	printf("%s\n", "}")
	
}
    
 
