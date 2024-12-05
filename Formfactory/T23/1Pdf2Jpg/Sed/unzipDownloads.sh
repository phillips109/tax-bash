#!/bin/bash
#This file is Tax-bash/Formfactory/T??/1Pdf2Jpg/Sed/unzipDownloads.sh

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


cd ~/Downloads
dir *.zip
echo "Enter the name of the file you wish to unzip:"
read zipfile
echo $zipfile
sleep 5
unzip $zipfile -d ~/Downloads/images
cd ~/Projects/Tax-bash/Formfactory/T22/1Pdf2Jpg/Main
