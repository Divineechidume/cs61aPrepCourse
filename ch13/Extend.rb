class Array
	def to_shuffle
		recursive_shuffle self, [' ']
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

end
[1, 2, 3, 4].to_shuffle

class Integer
	def to_factorial
		if self < 1
			 1
		else
			ans = self * (self-1).to_factorial
		end
	end
	def to_roman
		th = (self / 1000)
		hun = (self % 1000 / 100)
		t = (self % 100 / 10)
		o = (self % 10 )
		roman = 'M' * th
		if hun == 9
			roman = roman + 'CM'
		elsif hun == 4
			roman = roman + 'CD'
		else
			roman = roman + 'D' * (self % 1000 / 500)
			roman = roman + 'C' * (self % 500 / 100)
		end
		if t == 9
			roman = roman + 'XC'
		elsif t == 4
			roman = roman + 'XL'
		else
			roman = roman + 'L' * (self % 100 / 50)
			roman = roman + 'X' * (self % 50 / 10)
		end
		if o == 9
			roman = roman + 'IX'
		elsif o == 4
			roman = roman + 'IV'
		else
			roman = roman + 'V' * (self % 10 / 5)
			roman = roman + 'I' * (self % 5 / 1)
		end
		puts roman
	end
end
puts 3.to_factorial
101.to_roman