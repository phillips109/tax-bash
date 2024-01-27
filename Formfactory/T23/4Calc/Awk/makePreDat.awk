BEGIN{
FS="[ \t]*!"
print "Copyright(C) 2019 Phillips Wedemeyer"
print ""
print "This file is part of a program called Tax-bash"
print ""
print "Tax-bash is free software: you can redistibute it and/or modify"
print  "it under the terms of the FNU General Public License as published by"
print "the Free Software Foundation, either version 3 of the License, or"
print "(at your option) any later version."
print ""
print "Tax-bash is distributed in the hope that it will be useful,"
print "but WITHOUT ANY WARRANTY; without even the implied warranty of"
print "MERCHANTABILITY or FITNESS FOR A PARTICULAR PUPOSE.  See the"
print "GNU General Public License for more details."
print ""
print "You should have received a copy of the GNU General Public License"
print "along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>."
print ""
print ""
}

/^xsum/{
printf("\n%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n","xsum","2name","3format", "4augend", "5addend", "6addend")       
  }
/^sum/{
printf("%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n", $1, $2,"#####0", "", "", "")
}

/^xcnum/{
printf("\n%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n","xcnum","2name","3format", "4test", "5value1", "6value2")       
  }

/^cnum/{
printf("%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n", $1, $2,"#####0", "", "", "")
}

/^xctext/{
printf("\n%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n","xctext","2name","3format", "4test", "5value1", "6value2")       
  }
/^ctext/{
printf("%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n", $1, $2,"#####0", "", "", "")
}

/^xaddit/{
printf("\n%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n","xsum","2name","3format", "4augend", "5addend", "6addend")       
  }
/^addit/{
printf("%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n", $1, $2,"#####0", "", "", "")
}

/^xcalc/{
    printf("\n%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n","xcalc","2name","3format", "4dummy", "5form", "6copy", "7line")       
}
/^calc/{
#    printf("%-8s\t!%-8s\t!%-8s\t!%-20s\t!\n", "dlin", $2, "#####0", "")
    printf("%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n", "calc", $2, "#####0", "", "", "", "")       
}

/^xdlin/{
    printf("\n%-8s\t!%-8s\t!%-8s\t!%-20s\n", "xdlin", "2name", "3format", "4dummy")
}
/^dlin/{
    printf("%-8s\t!%-8s\t!%-8s\t!%-20s\t!\n", $1, $2, "#####0", "", "", "", "")
#    printf("%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n","xdPull", $2,"#####0", "", "", "")       
}


/^xdPull/{
    printf("\n%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n","xdPull","2name","3format", "4dummy", "5form", "6copy", "7line")       
}
/^dPull/{
#    printf("%-8s\t!%-8s\t!%-8s\t!%-20s\t!\n", "dlin", $2, "#####0", "")
    printf("%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n", "dPull", $2, "#####0", "", "", "", "")       
}

/^xsubtr/{
printf("\n%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n","xsubt","2name","3format", "4minuend", "5subtrahend")       
}
/^subtr/{
    printf("%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n", $1, $2,"#####0", "", "")
}

/^xsubt0/{
printf("\n%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n","xsubt0","2name","3format", "4minuend", "5subtrahend")       
}
/^subt0/{
    printf("%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n", $1, $2,"#####0", "", "")
}
/^xmult/{
printf("\n%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n","xmult","2name","3format", "4multiplicand", "5multiplier")       
}
/^mult/{
    printf("%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n", $1, $2,"#####0", "", "")
}

/^xsmOf/{
printf("\n%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n","xsmOf","2name","3format", "4first", "5second")       
}
/^smOf/{
    printf("%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n", $1, $2, "#####0", "", "")        
}

/^xstud/{
printf("\n%-8s\t!%-8s\t!%-8s\t!%-20s\n", "xstud", "2name", "3format", "5dummy")
}
/^stud/{
    printf("%-8s\t!%-8s\t!%-8s\t!%-20s\t!\n", $1, $2, "#####0", "")
}


/^xtlin/{
    printf("\n%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n", "xtlin", "2name", "3blank","4dummy")
}
/^tlin/{
    printf("%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n", $1, $2, "", "", form, "01", $2)       
}

/xtPull/{
    printf("\n%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n","xtPull","2name", "3blank", "4dummy", "5form", "6copy", "7line")
}
/^tPull/{
    printf("%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n", $1, $2, "", "", "", "", "")       
}    
/^xdiv/{
    printf("\n%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n","xdiv","2name","3format", "4dividend", "5divisor")       

}
/^div/{
    printf("%-8s\t!%-8s\t!%-8s\t!%-8s\t!%-8s\t!\n", $1, $2, "#####0", "", "")
}
