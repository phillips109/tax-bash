BEGIN {
    FS="[ \t]*!"
    printf("%s","<Form>")
}

/^tlin/ {
    printf("%s%s%s\n", "<tlin name='", $2, "'>")
    printf("%s\n", "<instructions>" )
    printf("\t%s\n". $4 )
    printf("%s\n", "</instructions" )
    
}
/^dlin/ {
    printf("%s%s%s\n", "<dlin name='", $2, "'/>")
    printf("%s\n", "<instructions>" )
    printf("\t%s\n". $4 )
    printf("%s\n", "</instructions" )
}
END {
    printf("%s\n", "</Form>")
}
