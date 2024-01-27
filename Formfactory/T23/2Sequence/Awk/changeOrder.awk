BEGIN{
    FS="[ \t]*!"
    OFS="\t!"
}
{print $3, $2, $1, $4} 
