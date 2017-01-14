puts 'What year were you born in.?'
year = gets.chomp.to_i
puts 'What month were you born in? Please give in numbers.'
puts 'For example November would be 11?'
month = gets.chomp.to_i
puts 'What day were you born on.'
day = gets.chomp.to_i
Born  = Time.local(year, month, day)
testborn = Born + (3600*24)
Today = Time.new
age = 1
while  Time.local(year+age, month, day)<= Today
	puts 'SPANK!'
	age  += 1
end
