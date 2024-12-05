#showEntriesOnly2.awk
#This file is to remove all lines except entry lines.
#That is tlin or dlin.

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
    FS="[ \t]*!"
    #The following lines create and array called array of pdf files containing the instructions for the form that indexes the array.
    array["Form1040"]="1040gi,pdf"
    array["SchedC"]="i1040sc.pdf"
    
    #This line is the header line for the files.
    printf("%-10s\t!%-10s\t!%-20s\t!%-10s\t!%-5s\t!%s\n", "000", "type", "IRSInstructions", "name", "PgNo", "menuEntry")
}


#This line prints the tlin and dlin records.
$1 ~ /^[dt]lin/  { foo = array[form]; printf("%-10s\t!%-10s\t!%-20s\t!%-10s\t!%-5s\t!%s\n", $3, $1, foo, $2, "", $4 )}

#This line does nothing for the non-tlin or non-dlin records.
$1 !~ /^[dt]lin/ {} 


	  



