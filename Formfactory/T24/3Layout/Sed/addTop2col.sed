#addTop2col.sed \
#formatting instructions \
# \
#Copyright(C) 2023, 2024 Phillips Wedemeyer \
# \
#This file is part of a program called Tax-bash. \
# \
#Tax-bash is free software: you can redistibute it and/or modify \
#it under the terms of the GNU General Public License as published by \
#the Free Software Foundation, either version 3 of the License, or \
#(at your option) any later version. \
# \
#Tax-bash is distributed in the hope that it will be useful, \ 
#but WITHOUT ANY WARRANTY; without even the implied warranty of \
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the \
#GNU General Public License for more details. \
# \
#You should have received a copy of the GNU General Public License \
#along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>. \ 
#  \



/xcol/s/!4left	!4right	!8alig/!3left	!4right	!5alig	!6top/
/col/s/!left/!left	!0.00/
/col/s/!right/!right	!0.00/
/xlin/s/!5form\t6copy\t!line2//
