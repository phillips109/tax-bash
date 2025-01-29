#!/bin/bash
#This file is Tax-bash/Formfactory/T??/3Layout/Make/simplify.sh
#This converts all the tPull lines to tlin and
#all the dPull lines to dlin.

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
#

sed -f ../Sed/pull2lin.sed ../Lot/$1_Copy$2.lot.reg  > ../Lot/$1_Copy$2.lot.sim
