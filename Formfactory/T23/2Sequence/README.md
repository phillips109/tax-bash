# This is the README file for the 2Sequence folder of Tax-bash

Copyright(C) 2023 2024 Phillips Wedemeyer

This file is part of a program called Tax-bash.

Tax-bash is free software: you can redistibute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Tax-bash is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>.



# In this folder two things are accomplished.
1. The entry spaces on the form are given **short names**
2. The **sequence** in which the forms are likely to be filled out is specified.

The main menu, as always, is located in the Main directory.
In this case it is called **seqMenu**.
Invoke the menu by typing **./seqMenu**.

You will be asked to choose to work on either a form a schedule, or a worksheet.
Choose **f** for forms, **s** for schedules, or **w** for woeksheets.

You will be presented with a list from which to choose the particular form, schedule or worksheet on which you wish to work.
Enter the name of the one on which you wish to work.

You will then be presented with the menu which will guide your work.

1. will present you with a view of the pdf file of the form, schedule or worksheet.
2. will create a template file with the number of blocks you specify.
   The program will ask you how many entry blocks need to be entered or calculated.
   Note that the payor's name may have 2 lines.
   Note that the address may have 2 lines.
   Note that city, state, and zip need to be counted separately.
   You can count these on the pdf file displayed or
   you can simply enter a number that is expected to be large enough.
   With that number the program will create an awk data base to be filled out.
3. opens the awk data base in emacs for you to edit.
   You will enter a short name for each entry.
   If it is a text line, indicate this with tlin under the type column.
   If it is a static number such as a TIN or account number, indicate tlin.
   If it is a calculated number line, indicate this with dlin under the type column.
   If you decide you need a additional line (a new data base record) say after line 13,
   simply create one with the number 13a. The program will work this way, but it will
   probable be cleaner to renumber the lines in the sequence column when you are finisihed.
4. This reorders the columns and records the result in ../Txt/$1.txt
5. This removes the first line (title line) of the file
6. This allows you to check the file using emacs
7. This copies the file to ../../3Layout/Txt.
8. This copies the file to ../../4Calc/Txt.
