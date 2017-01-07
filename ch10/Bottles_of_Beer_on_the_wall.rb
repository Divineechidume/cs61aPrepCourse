
def bottle amount
	recursive_bottles amount
end
def english_number number
	if number < 0 
		return 'Please enter a number that isn\'t negative.'
	elsif number == 0
		return 'zero'
	elsif number > 9999
		return 'Please enter a number that is less than 9999.'
	else
		
		recursive_english_number number, '', 1000, 1
	end
end
def recursive_english_number number, string, item, oro
	ones_place = ['one', 'two', 'three',
				  'four', 'five', 'six',
				  'seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty',
				  'forty', 'fifty', 'sixty',
				  'seventy', 'eighty', 'ninety']
	teenagers = [[11, 'eleven'], [12, 'twelve'], [13, 'thirteen'],
				[14, 'fourteen'], [15, 'fifteen'], [16, 'sixteen'],
				[17, 'seventeen'], [18, 'eighteen'], [19, 'nineteen']]
	item_list = ['hundred', 'thousand']
	if number == 0
		puts string
	else
		if number/ 1000 > 99
			puts test2 = number.split('').map(&:to_i)
			test3 = test2[0]
			string = string + ' ' + ones_place[(test3 - 1)] + 'hundred'
			test2 = test2.pop(test2.length)
			number = test2.join()
			recursive_english_number number, string, item, oro
		elsif number/ 1000 > 9
			test2 = number.split('').map(&:to_i)
			test3 = test2[0]
				if test2.pop(test2.length) < 1000
					string = string + ' ' + tens_place[(test3 - 1)] + 'thousand'
					test2 = test2.pop(test2.length-1)
					number = test2.join()
					recursive_english_number number, string, item, oro
				else
					string = string + ' ' + tens_place[(test3 - 1)]
					test2 = test2.pop(test2.length)
					number = test2.join()
					recursive_english_number number, string, item, oro
				end
		end
		if number > item && number > 99
			test = -1
			while number/item >= 1
				test = test + 1
				number = number - item
			end
			if test != -1
				string = string + ' ' + ones_place [test] + ' ' + item_list[oro]
				item = item/10
				oro = oro - 1
				recursive_english_number number, string, item, oro
			end
		elsif number > 10 && number < 20
				test = 8
				while true
					if (teenagers[test][0]) == number
						string = string + ' '+ teenagers[test][1]
						number = number - (teenagers[test][0])
						break
					end
					test = test - 1
				end
				recursive_english_number number, string, item, oro
		elsif number > 9
			test = -1
			while number/item >= 1
				test = test + 1
				number = number - item
			end
			if test != -1
				string = string + ' ' + tens_place[test]
				item = item/10
				recursive_english_number number, string, item, oro
			end
		elsif number > 0
			test = -1
			while number/1 >= 1
				test = test + 1
				number = number - 1
			end
			if test != -1
				string = string + ' ' + ones_place[test]
				item = item/10
				recursive_english_number number, string, item, oro
			end			
		else 
			item = item/10
			oro = oro - 1
			recursive_english_number number, string, item, oro
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
		puts 'Go to the store and buy some more, 99 bottles of Beer on the wall.'
	else
		puts (english_number bottles).to_s + ' bottles of beer on the wall, ' + (english_number bottles).to_s + ' bottles of beer.'
		puts 'Take one down and pass it around, ' + (english_number (bottles - 1)).to_s + ' bottles of Beer on the wall'
		recursive_bottles (bottles-1)
	end
end
bottle 2