birth_dates = {}
File.read('birthdates.txt').each_line do |line|
	arr = line.chomp.split(', ')
	arr += [(arr[1]+arr[2])]
	arrraytype = arr[1] + ', ' + arr[2]
	birth_dates [arr[0]] = arrraytype
end
puts 'Can you give me a name?'
name = gets.chomp
a = true
while a == true
	birth_dates.each do |x, y|
		if name == x
			puts y 
			a = false
		end
	end
	if a != false
		puts 'Sorry we cannot find that name'
		a = false
	end
end
