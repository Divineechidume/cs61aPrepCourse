puts 'Enter any integer between 1 an 3000.'
def Old_roman_numeral num
	values = ['I','V','X','L','C','D','M']
	lst    = [1,5,10,50,100,500,1000]
	roman  = []
	roman.push ('M' * (num / 1000))
	while true
		time = lst.last
		lst.pop
		values.pop
		roman.push (values.last * (num % time / lst.last))
		if time == 5
			break
		end
	end
	puts roman.join()
end
Old_roman_numeral gets.chomp.to_i