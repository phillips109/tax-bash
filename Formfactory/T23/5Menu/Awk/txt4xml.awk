BEGIN {
    FS="[ \t]*!"
    printf("%s","<Form>")
}

/^tlin/ {
    printf("%s%s%s\n", "<taxline name=", $2, " type=\"tlin\" color=\"black\">")
    printf("%s%s%s%s%s\n", "<linename>", form, "-Copy00-line", $2, "</linename>")
    printf("%s%s%s\n", "<seq>", $3, "</seq>")
    printf("%s%s%s\n", "<instructions>", $4, "</instructions>")
    printf("%s%s%s\n", "<IRSInstructions>", $5, "</IRSInstructions>")
    printf("%s%s%s\n", "<pageNo>", $6, "</pageNo>")
    printf("%s\n", "</taxline>")
 }
/^dlin/ {
    printf("%s\n", "<taxline type=\"dlin\" color=\"black\">")
    printf("%s%s%s%s%s\n", "<linename>", form, "-Copy00-line", $2, "</linename>")
    printf("%s%s%s\n", "<seq>", $3, "</seq>")
    printf("%s%s%s\n", "<instructions>", $4, "</instructions>")
    printf("%s%s%s\n", "<IRSInstructions>", $5, "</IRSInstructions>")
    printf("%s%s%s\n", "<pageNo>", $6, "</pageNo>")
    printf("%s\n", "</taxline>")
}
END {
    printf("%s\n", "</Form>")
}
