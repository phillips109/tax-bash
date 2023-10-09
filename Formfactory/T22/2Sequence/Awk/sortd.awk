#sorta.awk
#a function which sorts numbers in descending order
#The function takes tow arguments: the name of the array and
#                                  the number of elements in the array
#The function can be called this way:
# sortd(arrayname, NUM)

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


	     
    
