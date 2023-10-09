BEGIN{
    FS="[ \t]*!"
    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-9s\t!%-18s\n", "Col", "type", "name", "left", "right", "align/top", "dummy" )
}
$1 == LastColumn {
    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-9s\t!%-18s\n", $1,  $4, $3, "", "", "", "")
}
$1 != LastColumn {
    LastColumn = $1
    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-9s\t!%-18s\n", "Col",  "col", $1, "", "", "", "")
    printf("%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\t!%-9s\t!%-18s\n", $1,  $4, $3, "", "", "", "")
}

    
