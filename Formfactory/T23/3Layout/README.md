# Awk Basics

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


You do not need to know how to program in Xsl or other languages.
With a text editor, you will create an awk database that will tell the program what needs to be programmed.
An Awk database is written in plain text and is human readable and writable.
Each line is a record.
Each line contains fields that are ordinarily delineated by spaces.
Below is an example:

Fields :FirstName LastName City State
Record1:James Marsh Chicago IL
Record2:William Jones Phoenix AZ	    
Record3:Robert DeVita Denver CO
Record4:Thomas Morse New York NY

As you can see Record4 presents a problem:There is a space in New York and therefore Record4 has 5 fields instead of 4.

Awk provides a way to change the delimiter of the fields to say ":".
Thus Record4 could be written Thomas:Morse:New York:NY

I have chosen whitespace(spaces or tabs) followed by and exclamation point(!) as my delimiter.
The above database would be written by me (or you or the program) as:
James	   !Marsh   !Chicago !IL
William	 !Jones   !Phoenix !AZ
Robert	 !DeVita  !Denver  !CO
Thomas	 !Morse   !New York!NY

# The layout Folder

The layout section has as its final product the file ../2Fo/FormName_Copy00.2fo.

The layout section is concerned with two things.
The first one is placing the data in the right place on the page.
The second is to handle the text data for the form.

The text data is either a tlin or a tPull line.
The tlin is one into which the taxpayor enters data.
The tPull is one which pulls its data from another form.

Change directories to Layout/Main.
The shell file to guide your work is called layoutmenu.
It is invoked from the Main directory with the ./layoutmenu command.
(Note the leading ./ because it is assumed that the working directory
is not in your PATH for security reasons.)
You will have to enlarge the window to accomodate the menu.

You will be asked whether you wish to work on a file, a schedule, or a worksheet.
Enter f for file, s for schedule, or w for worksheet.
Let's assume you entered "f" for file.

The next menu will ask you  to select the name of the form on which you wish to work.

## The next menu contains the steps you will persue to create the desired .2fo file.

### Choice 0
This choice opens the pdf view of the form to guide you.

### Choice 1a
The background for your form is the jpg image of the form produced in ../../1pdf2jpg.
This choice will copy this file to your ../Jpg folder.


### Choice 1b
The nomenclature of the lines is determined in ../../2sequence.
This choice will copy the file ../../2sequence/Text/FormName.txt to ../Txt.

### Choice 1c
This step allows you to edit the .txt file.
The firsts line containing the headings should have been removed.
You may have to remove any extraneous !'s.


### Choice 1d
This step moves the columns around.
The .txt file had four columns: type, name, seq and blank.
The columns will be rearranged to: blank, type, name and seq.
The resulting file will be ../Columns/FormName.col.

### Choice 1e
Visualize your layout as consisting of columns and lines.

The columns all run from the top of the page to the bottom.
They have two measurement: left and right.
These indicate the left and right edges of the column.

The lines are placed in a column.
They have only one measurement: top.
This indicates how far down the page in the column the line is.

For each line you must designate a column.
For each line indicate the column in which you wish it to be placed at the beginning of the line.
In other words write the number of the column in the first field of each record.

The result will look like this:
01 !tPull   !TFNI  `!001
02 !tPull   !TLN    !002
01 !tlin    !addr01 !003
01 !tlin    !addr02 !004
01 !tlin    !city   !005
02 !tlin    !ST     !006
03 !tlin    !zip    !007 

On the form itself, picture 3 columns running from the top of the page to the bottom.
In column 01 are TFNI, addr01, addr02, and city at heights in the column to be indicated later.
In column 02 are TLN and ST.
In colunm 03 is zip

### Choice 1g
This choice makes a backup file in the BkgupColumns directory.
]
### Choice 1g
This will sort the records(line) by column to look like this:
01 !tPull   !TFNI    !001
01 !tlin    !addr01  !003
01 !tlin    !addr02  !004
01 !tlin    !city    !005
02 !tPull   !TLN     !002
02 !tlin    !ST      !006
03 !tlin    !zip     !007

The result will be ../Sorted/FormName.sorted

The file now looks like this:
Col  !type    !name    !left   !right   !align/top   !dummy
Col  !col     !01      !       !        !            !
01   !tPull   !TFNI    !       !        !            !
01   !tlin    !addr01  !       !        !            !  
01   !tlin    !addr02  !       !        !            !
01   !tlin    !city    !       !        !            !
Col  !col     !02      !       !        !            !
02   !tPull   !TLN     !       !        !            !
02   !tlin    !ST      !       !        !            !
03   !tlin    !zip     !       !        1            !

## Choice 1h
This choice opens the .sorted file for the entry 
of dummy data for each line in the last field.

### Choice 1i
This choice opens gimp.
In gimp open the .jpg file for the first page of the form.
This file will be found in ../Jpg

Change the measurements to inches rather than pixels.
Change the zoom to 50% or whatever is comfortable for you.

Place the pointer on the left side of the entry box and
record the x dimension value. This is the "left" side of your column.

Place the pointer on the right side of the entry box and
record the x dimension value. This is the "right" side of your column.

Place the pointer slightly above the bottom line of the entry box.
Record the y dimension value. This is the "top" measure for your line. 


### Choice ij 
This choice opens the .sorted file for the entry of gimp data.
Enter the location of the left side of a column under "left".
Enter the location of the right side of a column under "right".
Enter the alignment of the column data under "align/top" as either left, right, or center.
Generally text is left aligned, numbers right aligned, and checkmarks center aligned.
Enter the location of the bottom of the line for each field. Enter under "align/top".

he file now looks like this:
Col  !type    !name    !left   !right   !align/top   !dummy
Col  !col     !01      ! 0.05  !6.30    !left        !
01   !tPull   !TFNI    !       !        !1.00        !John E.
01   !tlin    !addr01  !       !        !1.50        !100 Main Street  
01   !tlin    !addr02  !       !        !2.00        !Suite 200
01   !tlin    !city    !       !        !2.50        !Pittsburgh
Col  !col     !02      !2.50   !5.00    !left        !
02   !tPull   !TLN     !       !        !1.00        !Dough
02   !tlin    !ST      !       !        !2.50        !PA
Col  !col     !03      !5.05   !8.00    !left        !
03   !tlin    !zip     !       !        !2.50        !15212

### Choice 1k
This choice removes any whitespace at the end of lines.

### Choice 1l
This choice creates a backup of .sorted in ../BkupSorted directory.

### Choice 1m
This choice creates an outline of your form.
This file is ../PreLot/FormName.pre.
Simplified, it will look something like this:

Form
  pgS                     where S means single, F means first, M means middle, and L means last.

    col                   note that this column encloses all the other columns
      col
        tPull
      Endcol****

      col
        tlin
        tlin
        tlin
      Endcol****

      col
        dlin
        dlin
        dlin
      Endcol****
    Endcol****
  EndpgS                 where S, F, M and L have the same meaning as above.
EndForm

Note that there are only three types of lines for you to deal with:
tlin are entries in the form where the taxpayor enters text.
tPull are lines where the text is drawn from other forms.
dlin are used here for all numerical lines regardless of their source.
They will be sorted into data entry, addition, subtraction, etc.
in the ../../4calc directory later.

The lines occupy one line.
All other entries are pairs that enclose something.

The outside enclosure is the Form EndForm pair.

The next inside enclosure is the pgS EndpgS pair enclosing a page.
The pgS EndpgS is used for single page form.
The pgF EndpgF is used for the first page of a 2 or more page form.
The pgM EndpgM is used for middle pages.
The pgL EndpgL is used for the last page of a 2 or more page form.

The next inside enclosure is a column that encloses all the other columns.
This enclosure allows ALL the lines in the form to be moved up, down, or sideways.
It is needed since the gimp data is about 0.10 inches too low.

Then comes the col Endcol***** pairs that enclose lines.

The page, column and line entries have an accompanying line above them.
This line tell you what data belongs where.
For instance, a col pair will look like this:

xcol   !2name !3top !4left    !5right	      
col    !      !	    !	        !


Endcol****

This guiding line is preceded by and x so that awk ignores it.

### Choice 1n 
This choice opens the file in emacs for you to check for errors.
Note carefully that each pair has a start and an end.

Note carefully that each column encloses at least one line.
If a column does not enclose a line, an error is thrown.
This error comes with little information to guide you.
In fact, if you get an error with little or no information
to tell you what is wrong, most likely you have a column
that does not enclose a line.

Lines need a name.
Columns do not seem to need a name but is helpful and recommended.
The top measurement of a column is always 0.00 inches.

Secondly, at this point you should divide your form into pages.
The template file you have been working with has an enclosing Form at the beginning
and an EndForm at the end of the file.
The next enclosures are for pages:
These begin with pg plus S, F, M,or L.
The template has an empty page at the start: pgS to EndpgS
Copy the
  EndDol******
  EmdPgS
to the end of your first page and change the S to an F.
Then copy the first lines and the first col of the empty page
   xpgS ......
   pgS

  xcol ......
  col ....
  
  to the start of your 2nd page.

If the second page is your last page change the xpgS and pgS to xpgL and pgL respectfully.
I it is not your last page, change the xpgS and pgS to xpgM and pgM respectlully.

Do similarly for any additionsl pages.
If you have any empty pages copy the empty page template into those locations.
If you do not have and empty page at the start of your form, remove the code for the empty page.

### Choice 1o
his choice copies the .pre file to ../Lot/FormName_Copy00.lot.reg
There are warnings and backups to try to prevent your overwriting
data that you had previously entered.

### Choice 1p 
This choice allows you to edit ../Lot/FormName_Copy00.lot.reg.
You have already looked it over in the .pre stage.

### Choice 1q
This choice makes a backup file in the BkupLot directory.

### Choice 1r
This choice allows you one last revision in emacs.
If your form contains multiple copies, youu can copy them in your template.
Simply label them as either F, M, or L.
Check that the background files are the correct form and page number.

### Choice 1s
This choice makes a backup of 1r in the BKupLot directory.

### Choices 2 through 8
These choices onvert the template awk file to pdf, step by step.

### Choice 9
This choice runs choices 2-8 sequentiially.
If this fails, run the steps 2-8 one by one to look for the error.

### Choice 10
This choice opens up a sub menu that takes you through the steps to create a copy of the form that has a yellow background for data that is drawn by other forms.
This is a hack to allow the taxpayor to link from one form to another.

### Choice 11
This choice copies the .2Fo file that is created to the 7App folder to become part of the Tax return.
