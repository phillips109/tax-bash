# First Folder: 1Pdfd2Jpg
## Purpose and Goals
This directory 1Pdf2Jpg contains the steps to
   1. Download the .pdf file of the form from the IRS website.
   2. Convert the ./pdf file to .jpg file(s).
      The .jpg files form the background image on which the data will be displayed.
      The Xsl program, which is the backend being used, can only work with .jpg.
      
## Navigation
Your first step is to go to the Main directory.
In Main wil be the file for your initital menu: pdf2jpg.
Activate the menu by typing ./pdf2jpg.
(For security reasons your working directory should not be in your PATH.)
You will be presented with the initial menu.

## Initial Menu

This main menu will allow you to chose the type of form you wish to create.
* Your choices are
   - Forms
   - Schedules
   - Worksheets.
    
This is for 2 reasons
   1. To reduce the number of choices on one menu.
   2. The source of the .pdf differs.
      To be exact:   
        - The .pdf of Forms and Schedules are downloaded from the IRS website.
        - The .pdf of Worksheets is taken from the .pdf of the instructions.
        - The .pdf of one form, bkg, is created from scratch.
     
The menus guide you through the process.

### If you enter "f" for forms
   You will be presented with a long, but not all inclusive, list of forms.
   Enter one, such as 1099div.

   You will be presented with a new menu which will guide you through the steps you need to take.
* 
* Steps to be taken using the menu 
1. will take you to the IRS website where you can download the .pdf file of the form you seek.
You will have to figure out the nomenclature used by the IRS. In this case it is "form 1099div".
Download the .pdf file of the instructions to ../Instructions.
Download the .pdf file of the form to ../Pdf.
2. This will show you the files in ../Pdf to show the .pdf files have been downloaded.
3. This will allow you to view the .pdf file.
4. This takes you to the website pdf2jpg.net.
   There you have to indicate your ./pdf file at ~/Formfactory/T22/1pdf2jpg/Pdf/
   Choose the excellent resolution.
   Press the button to convert.
   Download the resultant .jpg file(s) to ~/Downloads.
   Close the website to return to the menu.
5. Check that the .jpg files are in ~/Downloads.
6. Move the ~/Downloads/*.jpg file(s) to ../Jpg (The program assumes you have no other .jpg files in ~/Downloads).
7. Check the the files have been moved.

You should now have in your ../Jpg folder the .jpg file(s) that will be the background for your form.

### If you enter "s" for schedules 
You will be presented a menu exactly like that for forms.

### If "w" for worksheets
You will see a different menu.
1) Takes you the IRS website where you are to find and download the instructions for a form.
2) Check that the .pdf file is now in ../Instructions.
3) This will open the ../Instructions/$1.pdf file in Nautilus.
   The reason for this is that Nautilus has a "print to file" option.
   Find the worksheet desired by scrolling through the instructions.
   Use the next-page or previous-page options to center the page.
   Print the current page to file. If the worksheet covers more that one page, print the range of pages.
   Set the ouput page as ../Pdf/$1.pdf.
4) Check that the file has been created.
5) View the file in qpdfviewer.
6) Will take you to the pdf2jpg.net website where you can convert the .pdf to .jpg
7) Check that the .jpg file(s) have been downloaded to ~/Downloads.
8) Move the ./jpg files to ../Jpg. The program assumes you have no other ./jpg files in ~/Downloads.
9) Check that the ./jpg files have been moved to ../Jpg.

*THERE IS ONE FORM, bkg, that I created from scratch: The form that contains data that is common to many forms.
The process is hard wired for this particular form.
Steps 1 and 2 are reserved for development of a more generic approach to creating tables.
3) Convert the input file, ../Table/bkgdata.xml to ../Fo/fBkg.fo
4) Check that the file was created.
5) Convert the .fo file to .pdf
Then follow follow steps similar to 4-7 in form or schedules.
