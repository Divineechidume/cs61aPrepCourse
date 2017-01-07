def sort some_array
	recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array
	
	if unsorted_array.length == 1
		puts (sorted_array.push (unsorted_array [0])).join(' ')
	else
		test = unsorted_array
		while test.length != 1
			if (test[0]).downcase < (test[1]).downcase
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

sort ['for', 'He', 'is', 'a', 'jolly', 'Good', 'fellow']
puts [1, 2, 3, 4].pop(2)
