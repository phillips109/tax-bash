#convertEnt2xml.awk
#This file writes  ../Xml/$1.xml from data in ../Entries2/$1.ent2
#Input is expected to be: type name seq menuEntry IRSInstructions pgNo
#files is called by: awk --f ../Awk/convertEnt2xml.awk form=$1 ../Entries/$1.ent > ../Xml/$1.xml

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

    printf("%s%s%s\n", "<Form fname=\"", form, "\">")

}

/^tlin/ {
    printf("%s%s%s\n", "<taxline name=\"", $2, "\" type=\"tlin\" color=\"black\">")

#    printf("%s%s%s%s%s\n", "<linename>", form, "-Copy00-line", $2, "</linename>")
    
#    printf("%s", "<linename>")
#    printf("%s%s%s%s%s\n", "<value-of select=\"", form, "-Copy00-line", $2, "\"/>")
#    printf("%s\n","</linename>")		  
    
    printf("%s", "<menuEntry>")
    printf("%s", $4)
    printf("%s\n","</menuEntry>")		  

    printf("%s", "<IRSInstructions>")
    printf("%s", $5)
    printf("%s\n","</IRSInstructions>")		  

    printf("%s", "<pgNo>")
    printf("%s", $6)
    printf("%s\n","</pgNo>")		  

    printf("%s\n", "</taxline>") 
	   }

/^dlin/ {
    printf("%s%s%s\n", "<taxline name=\"", $2, "\" type=\"dlin\" color=\"black\">")

#    printf("%s", "<linename>")
#    printf("%s%s%s%s%s\n", "<value-of select=\"", form, "-Copy00-line", $2, "\"/>")
#    printf("%s\n","</linename>")		  
    
    printf("%s", "<menuEntry>")
    printf("%s", $4)
    printf("%s\n","</menuEntry>")		  

    printf("%s", "<IRSInstructions>")
    printf("%s", $5)
    printf("%s\n","</IRSInstructions>")		  

    printf("%s", "<pgNo>")
    printf("%s", $6)
    printf("%s\n","</pgNo>")		  

    printf("%s\n", "</taxline>") 
	   }

END{
    printf("%s\n", "</Form>")	   
	  }
