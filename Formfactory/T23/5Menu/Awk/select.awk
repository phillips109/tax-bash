
BEGIN{
#array[F1040] = "i1040gi.pdf"
array[SchedC] = "i1040sd.pdf"
array[Bkg] = "Bkg.pdf"
array[Form1040] = "i1040gi.pdf"
}

{
#    print array[Form1040]    
#    print array[Bkg]
#    print array[Form1040]
    
#    print array[item]
#    for ( item in array )       

#    print array[item]           #prints out the last text entered

 #   print $1
#    if ( $1 = "SchedC" )
#	print $1
#	print array[SchedC]

    if ( $1 == "Form1040" ){     #This works!
    print $1
    print $2
    }
}
    
