
#addColumns.awk
#This file add IRSInstructions to ../Entries/$1.ent > ../Pre/$1.pre
#Input is expected to be seq type name menuEntry

BEGIN{
    FS="[ \t]*!"

   
    printf("%-10s\t!%-10s\t!%-10s\t!%-110s\t!%-20s\t!%-5s\t!%-5s\n", "type", "name", "seq", "menuEntry", "IRSInstructions", "pgNo", "")
    array[Form1040] = "1040gi.pdf"
    array[SchedC] = "i1040sc.pdf"
    array[Bkg] = "Bkg.pdf"

}

    
    NR > 1 {foo = array[form]; printf("%-10s\t!%-10s\t!%-10s\t!%-100s\t!%-20s\t!%-5s\t!%-5s\n", $1, $2, $3, $4, foo, "", "")}

