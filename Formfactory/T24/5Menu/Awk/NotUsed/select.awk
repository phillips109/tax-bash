
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


BEGIN{
#array[F1040] = "i1040gi.pdf"
array[SchedC] = "i1040sd.pdf"
array[Bkg] = "Bkg.pdf"
array[Form1040] = "i1040gi.pdf"
}

{
#    print array[Form1040]    
#    print array[Bkg]
#    print array[Form1040]
    
#    print array[item]
#    for ( item in array )       

#    print array[item]           #prints out the last text entered

 #   print $1
#    if ( $1 = "SchedC" )
#	print $1
#	print array[SchedC]

    if ( $1 == "Form1040" ){     #This works!
    print $1
    print $2
    }
}
    
