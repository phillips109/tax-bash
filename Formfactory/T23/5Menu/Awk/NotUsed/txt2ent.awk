#txt2ent.awk
#converts ../Txt$`.txt to ../Entries.$1.3n5
#input: type name seq !
#output: type name seq menuEntry

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

    #this line is the header line for the files.
    printf("%-10s\t!%-10s\t!%-10s\t!%s\n", "seq", "type", "name", "menuEntry")
}

$! ~ /^[dt]lin printf("%s,%s,%s,%s\n", $3, $1, $2, "")
