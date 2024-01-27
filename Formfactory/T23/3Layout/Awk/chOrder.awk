BEGIN{
    FS="[ \t]*!"

    printf("For each line enter, as the first character of the line, \n")
    printf("the letter, a-z, of the column to which the line will belong.\n\n")

    
    printf("%-6s\t!%-6s\t!%-8s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", "col", "seq", "name", "type","left", "right", "align/top")
}


    $1 !~ /type/ { printf("%-6s\t!%-6s\t!%-8s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n","", $3, $2, $1, "", "", "") }

    
