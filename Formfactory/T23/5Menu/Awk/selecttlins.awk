#selecttlins.awk

BEGIN{
    FS="\n"
    RS=""
    printf("%s\t!%s\t!%s\t!%s\n", "type", "name", "seq", "menuEntry")
}

/^tlin/ { printf("%s\t!%s\t!%s\t!%s\n", $1, $2, "", "" ) }
