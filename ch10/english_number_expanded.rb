def english_number number
	if number < 0 
		return 'Please enter a number that isn\'t negative.'
	end
	recursive_english_number number, ''
	end
	
def recursive_english_number amount, string
	ones_place = ['one', 'two', 'three',
				  'four', 'five', 'six',
				  'seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty',
				  'forty', 'fifty', 'sixty',
				  'seventy', 'eighty', 'ninety']
	teenagers = [[11, 'eleven'], [12, 'twelve'], [13, 'thirteen'],
				[14, 'fourteen'], [15, 'fifteen'], [16, 'sixteen'],
				[17, 'seventeen'], [18, 'eighteen'], [19, 'nineteen']]
	zillions  = 		 [['hundred', 100],
						 ['thousand', 1000],
						 ['million',  1000000],
						 ['billion',  1000000000],
						 ['trillion', 1000000000000]]
	item = amount.to_s.split('').map(&:to_i)
	for i in zillions do
		puts i
	end
end
english_number 10				