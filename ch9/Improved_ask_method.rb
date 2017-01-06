def ask question
	puts question
	reply = gets.chomp.downcase
	while (reply != 'yes') && (reply != 'no')
			puts 'Please answer "yes" or "no".'
			reply = gets.chomp.downcase
	end
	if reply == 'no'
		puts false
	elsif reply == 'yes'
		puts true
	end
	end
ask 'Do you like eating tacos?'