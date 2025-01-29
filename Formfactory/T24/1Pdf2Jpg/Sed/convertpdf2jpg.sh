#! /bin/bash
#This file is Tax-bash/Formfactory/T??/Sed/convertpdf2jpg.sh

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


echo "You are now going to convert the .pdf file to one or more .jpg files."
echo "You will be taken to https://smallpdf.com/pdf-to-jpg"
echo "When you reach the first page scroll down and read the How-To instructions"
echo  "When you have finished, you will be returned to the main menu."
sleep 15
#firefox https://smallpdf.com/pdf-to-jpg
firefox https://pdf2jpg.net
