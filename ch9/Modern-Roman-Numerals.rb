puts 'enter any integer between 1 and 3000'
def roman_numeral num
	th = (num / 1000)
	hun = (num % 1000 / 100)
	t = (num % 100 / 10)
	o = (num % 10 )
	roman = 'M' * th
	if hun == 9
		roman = roman + 'CM'
	elsif hun == 4
		roman = roman + 'CD'
	else
		roman = roman + 'D' * (num % 1000 / 500)
		roman = roman + 'C' * (num % 500 / 100)
	end
	if t == 9
		roman = roman + 'XC'
	elsif t == 4
		roman = roman + 'XL'
	else
		roman = roman + 'L' * (num % 100 / 50)
		roman = roman + 'X' * (num % 50 / 10)
	end
	if o == 9
		roman = roman + 'IX'
	elsif o == 4
		roman = roman + 'IV'
	else
		roman = roman + 'V' * (num % 10 / 5)
		roman = roman + 'I' * (num % 5 / 1)
	end
	puts roman
	end
roman_numeral 1999