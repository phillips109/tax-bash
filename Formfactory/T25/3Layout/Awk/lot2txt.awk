#This file is Tax-bash/Formfactory/T??/3Layout/Awk/lot2txt.awk
#The purpose is to derive the /Txt/*.txt file from /Lot/*.lot
#This is the reverse of the usual process.
#The *.txt file is to control the sequence in which user info is entered
#via the menu developed in /5Menus.

#Copyrigh(C) 2023, 2024 Phillips Wedemeyer
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



BEGIN { FS="[ \t]*!"
    n=000
}
{ if ( $1 ~ /^tlin/ || $1 ~ /^dlin/ )    {
	n=n+1
	printf("%-10s", $1 )
	printf("!%-10s", $2 )
	printf("!%3s\n", n )
    }
}




