# First Folder: 1Pdf2Jpg
## Purpose and Goals
This directory 1Pdf2Jpg contains the steps to
   1. Download the .pdf file of the form from the IRS website.
   2. Convert the ./pdf file to .jpg file(s).
      The .jpg files form the background image on which the data will be displayed.
      The Xsl program, which is the backend being used, can only work with .jpg.
      
## Navigation
- Your first step is to go to the Main directory.
- In Main wil be the file for your initital menu: pdf2jpg.
- Activate the menu by typing ./pdf2jpg.
- (For security reasons your working directory should not be in your PATH.)
- You will be presented with the initial menu.

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
      
     
The menus guide you through the process.

### If you enter "f" for forms
   - You will be presented with a long, but not all inclusive, list of forms.
   - Enter one, such as 1099div.

   - You will be presented with a new menu whose choices represent the steps you need to take.
   - Select the options in numerical order.
   
1. will take you to the IRS website where you can download the .pdf file of the form you seek.
   You will have to figure out the nomenclature used by the IRS. In this case it is "form 1099div".
   Download the .pdf file of the instructions to ../Instructions.
   Download the .pdf file of the form to ../Pdf.
2. This will show you the files in ../Pdf that have been downloaded.
3. This will allow you to view the .pdf file.
4. This takes you to the website https://safepdfkit/pdf-jpg using firefox.
   There you have to indicate your .pdf file which is in ../Pdf
   Choose the excellent resolution.
   Press the button to convert your .pdf file to .jpg
   Download the resultant .zip file to ~/Downloads.
   Close the website to return to the menu.
5. Check that the .zip file is in ~/Downloads.
6. unzip the .zip file. The resultant .jpg files will be in ~/Downloads/images/
7. Check that ./jpg files are indeed in dir ~/Downloads/images
8. mv ~/Downloads/images/*jpg to ../Jpg
9. Check that the ./jpg files are in dir ../Jpg
10. rm the ~/Downloads/images/*.jpg
    This step ought to be unnecessary since we used mv in step 8.
11. cp the ../Jpg/*.jpg to the /Jpg folders of 3Layout, 4Calc, and 7App
12. cp the ../Pdf/*.pdf to the /Pdf folders of 2Sequence, 3Layout, 4Calc, and 7App
 
At this point consider removing the zip file from ~/Downloads.
The program cannot do this for you since it does not know what zip files you may have in ~/Downloads.

You should now have in your ../Jpg folder the .jpg file(s) that will be the background for your form.

### If you enter "s" for schedules 
You will be presented a menu exactly like that for forms.

### If you enter "w" for worksheets
You will see a different menu.
1. Takes you the IRS website where you are to find and download the instructions for a form.
2. Check that the .pdf file is now in ../Instructions.
3. This will open the ../Instructions/$1.pdf file in Nautilus.
   The reason for this is that Nautilus has a "print to file" option.
   Find the worksheet desired by scrolling through the instructions.
   Use the next-page or previous-page options to center the page.
   Print the current page to file. If the worksheet covers more that one page, print the range of pages.
   Set the ouput page as ../Pdf/$1.pdf.
4. Check that the file has been created.
5. View the file in qpdfviewer.
6. Will take you to the https://safepdfkit/pdf-jpg website where you can convert the .pdf to .jpg
7. Check that the .jpg file(s) have been downloaded in a .zip file toto ~/Downloads.
8. unzip the zip file. The resultant .jpg file(s) will be in ~/Dowonloads/images/
9. Check that the .jpg files are in dir ../~/Downloads/images/
10. mv ~/Downloads/images/*.jpg to ../Jpg
11. Check that the ./jpg files have been moved to ../Jpg.
12. 10. rm the ~/Downloads/images/*.jpg
    This step ought to be unnecessary since we used mv in step 8.
13. cp the ../Jpg/*.jpg to the /Jpg folders of 3Layout, 4Calc, and 7App
14. cp the ../Pdf/*.pdf to the /Pdf folders of 2Sequence, 3Layout, 4Calc, and 7App
  
At this point consider removing the zip file from ~/Downloads.
The program cannot do this for you since it does not know what zip files you may have in ~/Downloads.

You should now have in your ../Jpg folder the .jpg file(s) that will be the background for your worksheet.

## Backgroun Form (Bkg)
The b
There is one form for which there was no preexisting .pdf file.
Therefire the .pdf file hac to be created.
In the ../Table folder are the required files to create a two-column table.
I wrote the file bkgdata.xml to contain the dataa that will go in the left hand column.
The file bkg.xsl creates the .fo file of the table.
fop is used to convert the .fo file to .pdf.
This pdf is now the background image for the form.
The steps in the menu are

