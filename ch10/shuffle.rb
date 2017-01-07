def shuffle some_array
	recursive_shuffle some_array, [' ']
end
def recursive_shuffle sorted_array, unsorted_array
	if sorted_array.length == 0
		unsorted_array -= [' ']
		puts unsorted_array.join(' ')
	else
		randomnum = rand(sorted_array.length)
		unsorted_array.insert((rand(unsorted_array.length)), (sorted_array [randomnum]))
		sorted_array -= [sorted_array [randomnum]]
		recursive_shuffle sorted_array, unsorted_array
	end
end

shuffle ['1', '2', '3', '4']