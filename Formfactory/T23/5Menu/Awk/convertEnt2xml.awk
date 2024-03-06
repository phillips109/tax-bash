#convertEnt2xml.awk
#This file writes  ../Xml/$1.xml from data in ../Entries2/$1.ent2
#Input is expected to be: type name seq menuEntry IRSInstructions pgNo
#files is called by: awk --f ../Awk/convertEnt2xml.awk form=$1 ../Entries/$1.ent > ../Xml/$1.xml

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
