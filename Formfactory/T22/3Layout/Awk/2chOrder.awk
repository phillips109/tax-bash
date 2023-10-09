BEGIN{
    FS="[ \t]*!"
    
#    printf("%-6s\t!%-6s\t!%-8s\t!%-6s\t!%-6s\t!%-6s\n", "Col", "type", "name", "left", "right", "top/align")
}

{
    printf("%-6s\t!%-8s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", $1, $4, $3, $5, $6, $7)
}
    
