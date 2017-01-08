
def bottle amount
	recursive_bottles amount
end

def english_number some_number
	recursive_english some_number
end


def find digit
	digits = [[1, 'one'], [2, 'two'], [3, 'three'], 
				 [4, 'four'], [5, 'five'], [6, 'six'], 
				 [7, 'seven'], [8, 'eight'], [9, 'nine'], [10, 'ten'], 
				 [11, 'eleven'], [12, 'twelve'], [13, 'thirteen'], 
				 [14, 'fourteen'], [15, 'fifteen'], [16, 'sixteen'], 
				 [17, 'seventeen'], [18, 'eighteen'], [19, 'nineteen'], 
				 [20, 'twenty'], [30, 'thirty'], 
				 [40, 'forty'], [50, 'fifty'], [60, 'sixty'], 
				 [70, 'seventy'], [80, 'eighty'], [90, 'ninety']]
	lens = 0
			while lens <= 100
				if digits [lens][0] == digit
					digit = digits[lens][1]
					break
				end
				lens += 1
			end
	digit
end


def recursive_english number
	thousand = 1000
	million	 = thousand * 1000
	billion	 = million * 1000
	trillion = billion * 1000
	if number < 20
		lens = 0
		if number < 20
			puts = find number
		end
	elsif number < 100
		if number%10 == 0
			puts = find number
		else
			puts = (find((number/10)*10))+'-'+find(number%10)
		end
	elsif number < thousand
		if number%100 == 0
			puts ((find((number/100))).to_s + ' hundred')
		else
			puts ((find((number/100))).to_s + ' hundred and ' + (recursive_english(number%100)).to_s)
		end
	elsif number < million
		if number%thousand == 0
			puts ((recursive_english(number/thousand)).to_s + ' thousand')
		else
			puts ((recursive_english(number/thousand)).to_s + ' thousand, ' + (recursive_english(number%thousand)).to_s)
		end
	elsif number < billion
		if number%million == 0
			puts ((recursive_english(number/million)).to_s + ' million')
		else
			puts ((recursive_english(number/million)).to_s + ' million, ' + (recursive_english(number%million)).to_s)
		end
	elsif number < trillion
		if number%billion == 0
			puts ((recursive_english(number/billion)).to_s + ' billion')
		else
			puts ((recursive_english(number/billion)).to_s + ' billion, ' + (recursive_english(number%billion)).to_s)
		end
	end
end

def recursive_bottles bottles
	if bottles == 2
		puts (english_number bottles).to_s + ' bottles of beer on the wall, ' + (english_number bottles).to_s + ' bottles of beer.'
		puts 'Take one down and pass it around, ' + (english_number (bottles - 1)).to_s + ' bottle of Beer on the wall'
		bottles = bottles - 1
		puts (english_number bottles).to_s + ' bottle of beer on the wall, ' + (english_number bottles).to_s + ' bottle of beer.'
		puts 'Take one down and pass it around, ' + ' no more bottles of Beer on the wall'
		puts 'No more bottles of beer on the wall, no more bottles of beer.'
		puts 'Go to the store and buy some more, ninety-nine bottles of Beer on the wall.'
	else
		puts (english_number bottles).to_s + ' bottles of beer on the wall, ' + (english_number bottles).to_s + ' bottles of beer.'
		puts 'Take one down and pass it around, ' + (english_number (bottles - 1)).to_s + ' bottles of Beer on the wall'
		recursive_bottles (bottles-1)
	end
end
bottle 9999

