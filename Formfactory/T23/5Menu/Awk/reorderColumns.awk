
#reorderColumns.awk
#This file reorders the columns of ../Entries/$1.ent to ../Pre/$1.pre
#Input is expected to be seq type name menuEntry

BEGIN{
    FS="[ \t]*!"

    printf("%-10s\t!%-10s\t!%-10s\t!%-100s\n", "type", "name", "seq", "menuEntry", "")

}

{
    printf("%-10s\t!%-10s\t!%-10s\t!%-100s\n", $2, $3, $1, $4 )
}
