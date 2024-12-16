# This folder, 4Calc, is where the calculations of the form are performed.
As usual the menu file is in the Main directory:calcMenu.

1. The first choice is to display the ,pdf view of the form.
2. The next step imports the .txt file from /2Sequence/Txt.
3. The next step copies the .txt file to /Edit for editing.
4. The nest step edits the file to specify the type of the line (addit, mult etx)
5. The next step sorts the types
6. The next step verifies the file.
7. The next step, 1g, creates an awk database.
8. 1h moves the database to /EdPre for editing.
9. 1i adds the entries to be added, multiplied, etc.
10. 1j removes any white space from the lines.
11. 1k changes the layout for entry of cnum and ctext calculations.
12. 1l removes whitespace again.
13. 1m enters the complex cnum and ctext calculations.
14. 1n removes white space again.
15. Step 2 creates the Input file.
16. Step 3 makes the data files.
17. Step 4 makes the variables.
18. Step 5 makes the lines that refer to the variables.
19. Step 6 creates the Xsl file from the variables and lines.
20. Step 7 calculates the totals.
21. Step 8 calculates the value of each taxline.
22. Step 9 outputs the values for each taxline.
23. Step 10 displays the output for each taxline.
24. Step 11 is a shortcut to call steps 2 thru 10.
25. Step 13 is optional, it imports the text data from /3Layout.
26. Step 14 imports the background .jpg file.
27. Step 15 imports the .2fo file from /3Layout.
28. Step 16 converts the .2fo file to a .fo file. shows the form with data.
29. Step 17 converts the .fo file to .pdf.
30. Step 18 displays the form with txt data and some calculated data.
31. Step 19 is a shortcut to do steps 16-18.
32. Step 20 exports the variables and lines to 7App.
# These steps require your attention

In step 1d you will presented with a .txt file from /2Sequence.
This awk  database will have four fields: type name sequence and a blank column.
You will alter the type entry to be more specific.
You will designate the type field to be:
addit for addition
mult for multiplication
subtr for subtraction
subt0 for subtraction down to zero
smOf for smaller of
lgOf for larger of
div for division
cnum for logical calculation resulting in a number
ctext for a logical calculation resulting in a ttexual result.

In step 1i thewill be presented to you in a new format ( a new awk database)
xtPull  !2name  !3blank  !4dummy  !5form  !6copy  !7line  !
tPull   !SFNI   !         !        !Bkg    !00    SFNI

xtlin    !2name  !3blank  !4dummy  !
tlin      !QOFn  !        !x       !

xdlin    !2name  !3format  !4dummy
dlin     !3000   !#####0   !3000

xaddit    !2name  !3format  !4augend  !5addend  !6addend  !
addit     !07     !#####0   !line04    !line06  !line07  !

xdPull    !2name  !3format  !4dummy    !5form    !6copy  !7line
dPull     !01ad   !#####0   !0         !Form1099-B  !01  !line01

xsubtr    !2name  !3format  !4minuend  !5subtrahend  !
subtr     !02h    !#####0   !line02d   !line02e      !

xcnum

xctext
  
The first line in each pair is preceded by an x which causes awk to ignore it.
The first line is there to tell you what goes in each field(column).
The second line will be there with the name.
You will have to supply the other fields.
Blank is lft blank. Dummy is a dummy value that you may insert.
Dummy should be set at 0 for dPull lines.
