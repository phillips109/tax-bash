#showEntriesOnly.awk
#This file is to remove all lines except entry lines.
#That is tlin or dlin.
#Input is $1.txt: type(sorted) name sequence

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
    printf("%s\t!%s\t!%s\t!%s\n", "type", "name", "seq", "menuEntry")
}
#$1 !~ /tlin/ { printf("%s", "This is not a tlin") }
/^tlin/ { printf("%s\t!%s\t!%s\t!%s\n", $1, $2, $3, $4) }
/^dlin/ { printf("%s\t!%s\t!%s\t!%s\n", $1, $2, $3, $4) }   
