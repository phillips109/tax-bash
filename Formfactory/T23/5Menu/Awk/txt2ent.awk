#txt2ent.awk
#converts ../Txt$`.txt to ../Entries.$1.3n5
#input: type name seq !
#output: type name seq menuEntry

BEGIN{
    FS="[ \t]*!"

    #this line is the header line for the files.
    printf("%-10s\t!%-10s\t!%-10s\t!%s\n", "seq", "type", "name", "menuEntry")
}

$! ~ /^[dt]lin printf("%s,%s,%s,%s\n", $3, $1, $2, "")
