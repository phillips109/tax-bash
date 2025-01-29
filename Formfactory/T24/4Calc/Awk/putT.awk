#putT.awk
#a testing file

#Copyright(C) 2023, 2024 Phillips Wedemeyer
#
#This file is part of a program called Tax-bash.
#
#Tax-bash is free software: you can redistibute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#Tax-bash is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>.
#
#

BEGIN {
    FS="\n"; RS=""
}

/^dlin/ {
if( $1 != LastType )
{
    print "xdlin"
    print "2name"
    print "3format"
    print "dummy"
    print ""
    print $1
    print $2
    print $3
    print $4
    LastType=$1
}
    else
    {
    print $1
    print $2
    print $3
    print $4
    LastType=$1
    }
}

/^subt0/ {
    if ( $1 != LastType )
    {
	print "xsubt0"
	print "2name"
	print "3format"
	print "4minuend"
	print "5subtrahend"
	LastType=$1
    }
    else
    {
	print $1
	print $2
	print $3
	print $4
	print $5
	LastType="$1"
    }
    }
	
