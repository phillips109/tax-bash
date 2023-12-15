BEGIN {
    FS = "[ \t]*!"
    RS = ""
    OFS = "\n"
    ORS = "\n\n"
}
{$1=$1}1
