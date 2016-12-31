puts 'Give me a starting year.'
start = gets.chomp
puts 'Give me a ending year.'
ending = gets.chomp
while start <= ending
	if start == ending
		if (start%4 == 0) && (start%100 == 0)
			put start
			break
			end
	else
		if (start%4 == 0)||((start%100 == 0) && (Start%400 == 0))
			put start
			start = (start + 1)
end
end
end
