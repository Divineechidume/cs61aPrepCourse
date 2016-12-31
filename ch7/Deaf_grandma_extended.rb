
first = false
second = false
third = false
puts 'Hello Grandma'
request =  ''
while request != 'BYE'
	request = gets.chomp
	if request == 'BYE'
		request = gets.chomp
		if request == 'BYE'
			request = gets.chomp
			if request == 'BYE'
				break
				end
				end
				end
	if request == request.upcase
		random_year = 1938
		puts 'No, not since ' + random_year.to_s
	else
		puts 'HUH?! SPEAK UP SONNY!'
end
end
