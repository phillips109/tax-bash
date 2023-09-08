# Tax-bash
The tax-bash program is designed to calculate and file your US income tax return.
It is similar to commercial programs such as Tax-cut and TurboTax except that it is open source, free to use and modify.

## Differences from Tax-Cut@ or TurboTax@
The program currently does not have a guide to help you collect your data, it does not offer any tax or financial advice, and it does not e-file. 
These features could be easily added in the future.

The program does not access the internet to either pull information from financial institutions nor does it supply your data to be e-filed. 
Your data is confidential and is designed to be printed on paper and filed by "snail mail". 
If your GnuCash and this program were kept on a computer not connected to the internet, 
it would give persons on the internet no access to your data.

## The tax return consists of independent forms.
The created return consists entirely of pdf forms. 
The program is designed to pull data from your GnuCash program, but you may opt to enter all the data without the use of GnuCash. 
Each form is designed to pull data from other forms, no form pushes any data onto another form. 
If a form A expects to pull data from Form B and Form B does not yet exist, 
Form A will assume for calcultion purposes that the value is zero and 
for visual purposes the entry on the form will be left blank. 
This allows the filer to start with any form he chooses and 
allows him to add or remove forms from his return without one form impinging on any other.(
This behavior is made possible by the use of Xsl as the backend calculating language.)

## Formfactory
FormFactory is a program to create the forms that comprise the Tax-bash program.
Creation of a form consists of several steps. Doing this does not require any programming. The user simply follows the steps indicated by the main menus. 
What is created at each step is a text file that is an awk database that tells the program what code to write.

## Folder /1pdf2jpg perform the first step.
The first step is to create an image to use as the background of the file. 
This image is available as a pdf file from the IRS web site. 
Because the formating language fop currently can only use jpg images, 
the pdf file must be converted to jpg. 
The process to do this is contained in the 1Pdf2Jpg folder. 
The main menu is found in the file pdf2jpg file in the Main submenu. 
This menu will guide you through the process.

## Folder 2Sequence performs the second step.
The second step is to set the short names for each entry on the form and the sequence in which they will most likely be entered. 
The names set here will be used in all subsequent steps and the sequence will be used to create the menus for entering data. 
This process is contained in the 2Sequence folder with the main menu seqmenu located, as usual, in the Main subdirectory. 
The resultant document is an awk file in the Text folder with a name such as f1040.txt. 

## Separation of concerns
Steps 3,4, and 5 import this file as the start of their processes. 
These steps are independent of each other. 
Once the .jpg file and the .txt file are available, division of labor (separation of concerns) can take over. 
Steps 3,4,and 5 can occur in any order or simultaneously by diferent users.

## Foldere /3Layout puts the data in the correct blanks on the form.
The third step, contained in 3Layout folder, is the process of determining the location on the form where the data will be entered. 
The main menu, layoutmenu, is in the Main subdirectory. 
The result is a .2fo file that is an Xsl file containg the location information.

## The Folder /4Calc calculates the data to be placed on the form.
The fourth step, contained in the 4Calc folder, is the process of making all the calculations required on the form. 
The main menu, calcmenu, is,as usual, in the Main subdirectory. 
The result is an .xsl file that does the calculations for the form.

## The folder /5menu creates menus to allow the end user to enter data for the form.
The fifth step, contained in the 5Menu folder, is the process of making the menu for entering data into the form. 
The main menu, menMenu, is in the Main subdirectory. 
The result of the process is a menu that will be included in the user interface. 
Also created at this step is a data file for each user entry.

## Folder /6gui merges the menus into the gui and creates the data files to contain the entered data.
The sixth step, contained in the 6UI folder, is the creation of the user interface. 
The main menu is uiMenu located in the Main subdirectory. 
The user interface is written in bash, a script found on most linux computers. 
It is a text interface, not a graphic interface.
I find it works well, but a graphical interface could certainly be written in the future. 
Then the program might be call Tax-python or Tax-lisp.

The interface is concattenated from the files in the subdirectory TaxBash plus the ../Files/startMenu2 file. 
The parts of the interface are easy to find and edit in the TaxBash subdirectory.

## The seventh folder, 7app, is the tax-bash application ready for download. 
Do not edit the files in this folder. 
It contains for each form, in the 2Fo folder, a .2fo file from step 3, 
It contains for each form, in the XSl folder, an xsl file from step 4, 
It contains for each form, in the Data folder, data files for each user entry created in step 5, 
It contains for each form, in the Main folder, a new tax-bash interface file containing the menus created in step 5.

## How to download the /7App folder, which is the program tax-bash, to your computer

1. Create a tar file of the folder /7App
 
 Go up to ~/FormFactory/T22/ where you will find the file mkT22tar.sh file 
 which will create the tar file of 7App in a directory called T22.

2. Create a folder for your tax-bash program. 
   I would suggests ~/Tax-bash but you could use something like ~//TB to hide the program from prying eyes. 
   Under the Tax-bash folder you could have a directory made up of your initials in case you decide to calculate taxes for anyone other than yourself.

3. Copy the shell file downloadT22.sh to your folder.
   Go to your ~/Tax-bash/PW/ directory and copy ~/FormFactory/T22/downloadT22.sh to it. 

4. Run that shell file (./downloadT22.sh)
   This will create a directory T22 and the files from 7App will be extracted into it.

5. Change to the newly created /Tax-bash/PW/T22/Main directory.

6. Type ./tax-bash to start the program.

## How to update your program with any changes from Formfactory.

   Simply run the /Tax-bash/PW/T22/downloadT22.sh file again.
   Any new forms or changes to the program will be updated, but you data will not be overwritten.

## To summarize: The end user who wants to use tax-bash to do his taxes will
1. Create a Tax-bash directory with an optional subdirectory consisting of their innitials. 
2. From this subdirectory  they will download the downloadT22.sh file. 
3. Running this .sh file will download the Tax-bash application ready for use to create a tax return. 

Running the same program at a latter date will update the program without overwriting the user's data.



