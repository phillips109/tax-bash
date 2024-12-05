#sorta.awk
#a function which sorts numbers in descending order
#The function takes tow arguments: the name of the array and
#                                  the number of elements in the array
#The function can be called this way:
# sortd(arrayname, NUM)

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



function sortd(ARRAY, ELEMENTS, temp, i, j){
    for (i = 2; i <= ELEMENTS; ++i) {
	for (j = i; (j-1) in ARRAY && ARRAY[j-1] < ARRAY[j]; --j) {
	    temp = ARRAY[j]
	    ARRAY[j] = ARRAY[j-1]
	    ARRAY[j-1] = temp
	}
    }
    return
}    


	     
    
