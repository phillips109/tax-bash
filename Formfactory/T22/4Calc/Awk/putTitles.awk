#putTitles.awk
BEGIN{
    FS="[ \t]*!"
}

/^dlin/ {
    if( $1 != LastType )
    {
    printf("%-6s\t!%-6s\t!%-7s\t!%s\n", "xdlin", "2name","3format", "4dummy")
    printf("%-6s\t!%-6s\t!%-7s\t!%s\n", $1, $2, $3, $4)
    LastType=$1
    }
    else
    {
    printf("%-6s\t!%-6s\t!%-7s\t!%s\n", $1, $2, $3, $4)
    LastType=$1
    }
}
/^stud/ {
    if( $1 != LastType )
    {
    printf("%-6s\t!%-6s\t!%-7s\t!%s\n", "xstud", "2name","3format", "4dummy")
    printf("%-6s\t!%-6s\t!%-7s\t!%s\n", $1, $2, $3, $4)
    LastType=$1
    }
    else
    {
    printf("%-6s\t!%-6s\t!%-7s\t!%s\n", $1, $2, $3, $4)
    LastType=$1
    }
}
/^subtr/ {
    if( $1 != LastType )
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%s\n", "xsubtr", "2name","3format", "4minuend", "5subtrahend")
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%s\n", $1, $2, $3, $4, $5)
    LastType=$1
    }
    else
    {
    printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%s\n", $1, $2, $3, $4, $5)
    LastType=$1
    }
}
/^subt0/ {
    if( $1 != LastType )
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%s\n", "xsubt0", "2name","3format", "4minuend", "5subtrahend")
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%s\n", $1, $2, $3, $4, $5)
    LastType=$1
    }
    else
    {
    printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%s\n", $1, $2, $3, $4, $5)
    LastType=$1
    }
}
/^smOf/ {
    if( $1 != LastType )
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%s\n", "xsmOf", "2name","3format", "4first", "5second")
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%s\n", $1, $2, $3, $4, $5)
	LastType=$1
    }
    else
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%s\n", $1, $2, $3, $4, $5)
	LastType=$1
    }
}
/^mult/ {
    if( $1 != LastType )
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%s\n", "xmult", "2name","3format", "4multiplicand", "5multiplier")
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%s\n", $1, $2, $3, $4, $5)
	LastType=$1
    }
    else
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%s\n", $1, $2, $3, $4, $5)
	LastType=$1
    }
}
/^addit/ {
    if( $1 != LastType )
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%s\n", "xaddit", "2name","3format", "4augend", "5addend", "6+addend" )
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%-12s\n", $1, $2, $3, $4, $5, $6)
	LastType=$1
    }
    else
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%-12s\n", $1, $2, $3, $4, $5, $6)
	LastType=$1
    }
}

/^sum/ {
    if( $1 != LastType )
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%s\n", "xsum", "2name","3format", "4augend", "5addend", "6+addend" )
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%-12s\n", $1, $2, $3, $4, $5, $6)
	LastType=$1
    }
    else
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%-12s\n", $1, $2, $3, $4, $5, $6)
	LastType=$1
    }
}

/^cnum/ {
    if( $1 != LastType )
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%s\n", "xcnum", "2name","3format", "4test", "5value1", "6value2" )
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%-12s\n", $1, $2, $3, $4, $5, $6)
	LastType=$1
    }
    else
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%-12s\n", $1, $2, $3, $4, $5, $6)
	LastType=$1
    }
}

/^ctext/ {
    if( $1 != LastType )
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%s\n", "xctext", "2name","3format", "4test", "5value1", "6value2" )
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%-12s\n", $1, $2, $3, $4, $5, $6)
	LastType=$1
    }
    else
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%-12s\n", $1, $2, $3, $4, $5, $6)
	LastType=$1
    }
}

/^dPull/ {
    if( $1 != LastType )
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%-6s\t!%s\n", "xdPull", "2name","3format", "4dummy", "5form", "6copy", "7line")
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%-6s\t!%s\n", $1, $2, $3, $4, $5, $6, $7)
    LastType=$1
    }
    else
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%-6s\t!%s\n", $1, $2, $3, $4, $5, $6, $7)
	LastType=$1
    }
}
/^dRef/ {
    if( $1 != LastType )
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%-6s\t!%s\n", "xdRef", "2name","3format", "4dummy", "5form", "6copy", "7line")
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%-6s\t!%s\n", $1, $2, $3, $4, $5, $6, $7)
	LastType=$1
    }
    else
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%-12s\t!%-6s\t!%s\n", $1, $2, $3, $4, $5, $6, $7)
	LastType=$1
    }
}
/^tlin/ {
    if( $1 != LastType )
    {
	printf("%-6s\t!%-6s\t!%-12s\t!%-6s\t!%s\n", "xtlin", "2name","3form", "4copy", "5line")
	printf("%-6s\t!%-6s\t!%-12s\t!%-6s\t!%s\n", $1, $2, $3, $4, $5)
	LastType=$1
    }
    else
    {
	printf("%-6s\t!%-6s\t!%-12s\t!%-6s\t!%s\n", $1, $2, $3, $4, $5)
	LastType=$1
    }
}
/^tPull/ {
    if( $1 != LastType )
    {
	printf("%-6s\t!%-6s\t!%-12s\t!%-6s\t!%s\n", "xtPull", "2name","3form", "4copy", "5line")
	printf("%-6s\t!%-6s\t!%-12s\t!%-6s\t!%s\n", $1, $2, $3, $4, $5)
	LastType=$1
    }
    else
    {
	printf("%-6s\t!%-6s\t!%-12s\t!%-6s\t!%s\n", $1, $2, $3, $4, $5)
	LastType=$1
    }
}
/^div/ {
    if( $1 != LastType )
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%s\n", "xdiv", "2name","3format", "4dividend", "5divisor")
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%s\n", $1, $2, $3, $4, $5)
    LastType=$1
    }
    else
    {
	printf("%-6s\t!%-6s\t!%-7s\t!%-12s\t!%s\n", $1, $2, $3, $4, $5)
    LastType=$1
    }
}
