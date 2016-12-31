Bottles = 99
while Bottles != 0
	puts Bottles.to_s + ' bottles of beer on the wall, ' + Bottles.to_s + ' bottles of beer.'
	puts 'Take one down and pass it around, ' + (Bottles - 1).to_s + ' bottles of Beer on the wall'
	Bottles = Bottles - 1
	if Bottles == 1
		puts Bottles.to_s + ' bottles of beer on the wall, ' + Bottles.to_s + ' bottles of beer.'
		puts 'Take one down and pass it around, ' + ' no more bottles of Beer on the wall'
		puts 'No more bottles of beer on the wall, no more bottles of beer.'
		puts 'Go to the store and but some more, 99 bottles of Beer on the wall'
		break
	end
end
