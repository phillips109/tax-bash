#showEntriesOnly2.awk
#This file is to remove all lines except entry lines.
#That is tlin or dlin.

BEGIN{
    FS="[ \t]*!"
    #The following lines create and array called array of pdf files containing the instructions for the form that indexes the array.
    array["Form1040"]="1040gi,pdf"
    array["SchedC"]="i1040sc.pdf"
    
    #This line is the header line for the files.
    printf("%-10s\t!%-10s\t!%-20s\t!%-10s\t!%-5s\t!%s\n", "000", "type", "IRSInstructions", "name", "PgNo", "menuEntry")
}


#This line prints the tlin and dlin records.
$1 ~ /^[dt]lin/  { foo = array[form]; printf("%-10s\t!%-10s\t!%-20s\t!%-10s\t!%-5s\t!%s\n", $3, $1, foo, $2, "", $4 )}

#This line does nothing for the non-tlin or non-dlin records.
$1 !~ /^[dt]lin/ {} 


	  



