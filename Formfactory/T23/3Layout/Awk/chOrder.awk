#This file is Tax-bash/Formfactory/T??/3Layout/Awk/cdOrder.awk

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

    printf("For each line enter, as the first character of the line, \n")
    printf("the letter, a-z, of the column to which the line will belong.\n\n")

    
    printf("%-6s\t!%-6s\t!%-8s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n", "col", "seq", "name", "type","left", "right", "align/top")
}


    $1 !~ /type/ { printf("%-6s\t!%-6s\t!%-8s\t!%-6s\t!%-6s\t!%-6s\t!%-6s\n","", $3, $2, $1, "", "", "") }

    
