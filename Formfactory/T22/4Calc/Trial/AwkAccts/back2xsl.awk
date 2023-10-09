BEGIN{
    FS = "!"
    print "Account name='"$act"'>"
}
{
    print ""
    print "<payee>"
    print "<payeeNo>"$1"</payeeNo>"
    print "<payeeName>"$3"</payeeName>"
    print "\t<transaction>"
    print "\t\t<number"$2"</number>"
    print "\t\t<date>"$4"</date>"
    print "\t\tamount>"$5"</amount>"
    print "\t</transaction>"
    print "</payee>"
}
