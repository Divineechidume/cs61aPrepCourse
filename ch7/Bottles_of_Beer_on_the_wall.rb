bottles = 99
while true
	bottles = bottles - 1
	puts bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s + ' bottles of beer.'
	if bottles != 1
		puts 'Take one down and pass it around, ' + (bottles - 1).to_s + ' bottles of Beer on the wall'
	else
		puts 'Take one down and pass it around, ' + ' no more bottles of Beer on the wall'
		puts 'No more bottles of beer on the wall, no more bottles of beer.'
		puts 'Go to the store and buy some more, 99 bottles of Beer on the wall.'
		break
	end
end
