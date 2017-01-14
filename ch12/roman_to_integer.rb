def roman_to_integer input
	roman = {}
	roman ['I'] = 1
	roman ['V'] = 5
	roman ['X'] = 10
	roman ['L'] = 50
	roman ['C'] = 100
	roman ['D'] = 500
	roman ['M'] = 1000
	roman1      = ['I', 'V', 'X', 'L', 'C', 'D', 'M']
	number    = 0
	input = input.upcase.split('')
	index = 0
	index1 = 0
	ending = input.length - 1
	ending1 = roman.length - 1
	index = 0
	a     = ''
	while index <= ending
		if (input[index] == 'C') && (input[index + 1] == 'M')
			number += 900
			index  += 2
		elsif (input[index] == 'X') && (input[index + 1] == 'C')
			number += 90
			index  += 2
		elsif (input[index] == 'I') && (input[index + 1] == 'X')
			number += 9
			index  += 2
		elsif (input[index] == 'X') && (input[index+1] == 'I')
			number += 4
			index  += 2
		else
			while index1 <= ending1
					
					if roman1[index1] == input[index]
						number += roman[roman1[index1]]
						a = 'b'
					end
					index1 += 1
			end
			if a != 'b'     #this is what stops the script because when all the conditions would then have failed
				puts 'this is not a valid roman numeral'
				exit
			end
			index += 1
		end
	end
	puts number
end
roman_to_integer 'mcmxcix'
