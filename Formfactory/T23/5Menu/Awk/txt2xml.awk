BEGIN {
    FS="[ \t]*!"
    printf("%s","<Form>")
}

/^tlin/ {
    printf("%s%s%s\n", "<tlin name='", $2, "'/>")
}
/^dlin/ {
    printf("%s%s%s\n", "<dlin name='", $2, "'/>")
}
END {
    printf("%s\n", "</Form>")
}
