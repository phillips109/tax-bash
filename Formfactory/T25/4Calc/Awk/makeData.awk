#makeData.awk
#This file creates the data files.
#
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

BEGIN { FS = "\n"; RS = "" }

/^tlin/ {
    print "<taxline type='" $1 "' color='blue' >"
    print "<linename>" form "-Copy" copy "-line" $2 "></linename>"
    print "<instructions/>"
    print "<IRSinstructions/>"
    print "<notes/>"
    print "<text/>"
    print "<license>"
    print "	  Copyright(C) 2023, 2024 Phillips Wedemeyer"
    print""
    print "This file is part of a program called Tax-bash."
    print ""
    print "Tax-bash is free software: you can redistibute it and/or modify"
    print "it under the terms of the GNU General Public License as published by"
    print "the Free Software Foundation, either version 3 of the License, or"
    print "(at your option) any later version."
    print ""
    print "Tax-bash is distributed in the hope that it will be useful,"
    print "but WITHOUT ANY WARRANTY; without even the implied warranty of"
    print "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the"
    print "GNU General Public License for more details."
    print ""
    print "You should have received a copy of the GNU General Public License"
    print "along with Tax-bash.  If not, see %lt;https://www.gnu.org/licenses/%gt;."
    print ""
    print "</license>"
    print "</taxline>"
}

/^dlin/ {
    print "<taxline type='" $1 "' color='red' >"
    print "<linename>" form "-Copy" copy "-line" $2 "></linename>"
    print "<instructions/>"
    print "<IRSinstructions/>"
    print "<notes/>"
    print "<override/>"
    print "<accounts/>"
    print "<license>"
    print "	  Copyright(C) 2023, 2024 Phillips Wedemeyer"
    print""
    print "This file is part of a program called Tax-bash."
    print ""
    print "Tax-bash is free software: you can redistibute it and/or modify"
    print "it under the terms of the GNU General Public License as published by"
    print "the Free Software Foundation, either version 3 of the License, or"
    print "(at your option) any later version."
    print ""
    print "Tax-bash is distributed in the hope that it will be useful,"
    print "but WITHOUT ANY WARRANTY; without even the implied warranty of"
    print "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the"
    print "GNU General Public License for more details."
    print ""
    print "You should have received a copy of the GNU General Public License"
    print "along with Tax-bash.  If not, see %lt;https://www.gnu.org/licenses/%gt;."
    print ""
    print "</license>"
    print "</taxline>"

}
    	

