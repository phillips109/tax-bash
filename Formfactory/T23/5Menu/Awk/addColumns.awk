
#addColumns.awk
#This file add IRSInstructions to .../Pre/$1.pre  > ../Pre2/$1.pre2
#Input is expected to be type name seq menuEntry

BEGIN {
    FS="[ \t]*!"

    printf("%-10s\t!%-10s\t!%-10s\t!%-100s\t!%-20s\t!%-5s\t!%-5s\n", "type", "name", "seq", "menuEntry", "IRSInstructions", "pgNo", "")


}

{
         if ( form == "Bkg" )         file = "Bkg.pdf"
    else if ( form == "Form1040" )    file = "i1040gi.pdf"
    else if ( form == "Sched1" )      file = "i1040gi.pdf"	 
    else if ( form == "Sched2" )      file = "i1040gi.pdf"	 
    else if ( form == "Sched3" )      file = "i1040gi.pdf"	 
    else if ( form == "SchedA" )      file = "i1040sca.pdf"
    else if ( form == "SchedB" )      file = "i1040sb.pdr" 
    else if ( form == "SchedC" )      file = "i1040sc.pdf"
    else if ( form == "SchedD" )      file = "i1040sd.pdf"	 
    else if ( form == "Form1099div" ) file = "i1099div.pdf"	 
    else if ( form == "Form1099int" ) file = "i1099int.pdf"	 
    else if ( form == "Form1099r" )   file = "i1099r.pdf"
    else if ( form == "Form4868" )    file = "f4868.pdf"	 
    else if ( form == "Form4952" )    file = "f4952.pdf"	 
    else if ( form == "SST" )         file = "i1040gi.pdf"
    else if ( form == "FEITaxWkst" )  file = "i1040gi.pdf"
    else if ( form == "UG1250TaxWkst" ) file = "i1040sd.pdf"	 
    else                              file = "Instruction file not defined."	 

	 echo $file
    if ( NR > 1 )  printf("%-10s\t!%-10s\t!%-10s\t!%-100s\t!%-20s\t!%-5s\t!%-5s\n", $1, $2, $3, $4, file, "", "")
}



