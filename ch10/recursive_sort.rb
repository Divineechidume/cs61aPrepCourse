def sort some_array
	recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array
	
	if unsorted_array.length == 1
		puts (sorted_array.push (unsorted_array [0])).join(' ')
	else
		test = unsorted_array
		while test.length != 1
			if test[0] < test[1]
				test -= [test [1]]
			else
				test -= [test [0]]
			end
		end
		sorted_array.push test[0]
		unsorted_array -= [test [0]]
		recursive_sort unsorted_array, sorted_array
	end
end	

test = ['1', '2', '3', '4']
test -= [test [2]]
puts test.join()
sort ['for', 'he', 'is', 'a', 'jolly', 'good', 'fellow']