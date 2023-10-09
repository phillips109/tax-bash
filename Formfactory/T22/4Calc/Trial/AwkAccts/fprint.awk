
BEGIN {
    FS = "!"
    OFS = "!"
}
{
#    printf("%-60s!%-5s!%16s\n" , $1, $2, $3)
    print $1  $2  $3
} 
