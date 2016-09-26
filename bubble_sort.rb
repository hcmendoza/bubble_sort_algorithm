#Takes array and 'puts' sorted array.

def bubble_sort(array)
	#counter
	iteration = 1
	#Loop through all values (array.length-1) times
	while iteration <= array.length-1
		#Compare 2 adjacent values in array. Values are swapped if current value is greater than proceding value
		array.each_with_index do |n, i| 
			unless array[i+1] == nil    #stops comparison of last array value.
				if n > array[i+1]
					array[i], array[i+1] = array[i+1], n
				end			
			end
		end
		iteration += 1 # Counter increases after every iteration
	end
	puts array.inspect
end

bubble_sort([1, 4, 5, 4, 3, 2, 11, 9])


#Bubble sort takes block and 'puts' sorted array based on block comparison.

def bubble_sort_by(array)
	#counter
	iteration = 1
	#Loop through all values (array.length-1) times
	while iteration <= array.length-1
		#Compare 2 adjacent values in array. Values are swapped based on block comparison.
		array.each_with_index do |n, i|
			unless array[i+1] == nil    #stops comparison of last array value.
				if yield(n, array[i+1]) > 0
					array[i], array[i+1] = array[i+1], n
				end
			end
		end
		iteration += 1 # Counter increases after every iteration
	end
	puts array.inspect
end

bubble_sort_by(["hi","hello","hey", "a", "justice"]) {|left,right| left.length - right.length}