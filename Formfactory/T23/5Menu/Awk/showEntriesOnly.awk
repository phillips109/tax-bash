#showEntriesOnly.awk
#This file is to remove all lines except entry lines.
#That is tlin or dlin.
#Input is $1.txt: type(sorted) name sequence

BEGIN{
    FS="[ \t]*!"
    printf("%s\t!%s\t!%s\t!%s\n", "type", "name", "seq", "menuEntry")
}
#$1 !~ /tlin/ { printf("%s", "This is not a tlin") }
/^tlin/ { printf("%s\t!%s\t!%s\t!%s\n", $1, $2, $3, $4) }
/^dlin/ { printf("%s\t!%s\t!%s\t!%s\n", $1, $2, $3, $4) }   
