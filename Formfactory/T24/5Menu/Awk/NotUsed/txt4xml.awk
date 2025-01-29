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
    FS="[ \t]*!"
    printf("%s","<Form>")
}

/^tlin/ {
    printf("%s%s%s\n", "<taxline name=", $2, " type=\"tlin\" color=\"black\">")
    printf("%s%s%s%s%s\n", "<linename>", form, "-Copy00-line", $2, "</linename>")
    printf("%s%s%s\n", "<seq>", $3, "</seq>")
    printf("%s%s%s\n", "<instructions>", $4, "</instructions>")
    printf("%s%s%s\n", "<IRSInstructions>", $5, "</IRSInstructions>")
    printf("%s%s%s\n", "<pageNo>", $6, "</pageNo>")
    printf("%s\n", "</taxline>")
 }
/^dlin/ {
    printf("%s\n", "<taxline type=\"dlin\" color=\"black\">")
    printf("%s%s%s%s%s\n", "<linename>", form, "-Copy00-line", $2, "</linename>")
    printf("%s%s%s\n", "<seq>", $3, "</seq>")
    printf("%s%s%s\n", "<instructions>", $4, "</instructions>")
    printf("%s%s%s\n", "<IRSInstructions>", $5, "</IRSInstructions>")
    printf("%s%s%s\n", "<pageNo>", $6, "</pageNo>")
    printf("%s\n", "</taxline>")
}
END {
    printf("%s\n", "</Form>")
}
