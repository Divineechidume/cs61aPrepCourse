var1 = 2
var2 = '5'
puts var1.to_s + var2
puts var1 + var2.to_i
puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or what ever?'.to_i
puts 'Your momma did.'.to_f
puts''
puts 'stringy'.to_s
puts 3.to_i
puts 20
puts 20.to_s
puts '20'
puts gets
puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name+ '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'
puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
puts 'Hello ' + first_name+ ' '+ middle_name +' '+ last_name +'.'
puts 'What is your favorite number?'
favorite_number = gets.chomp
result = favorite_number.to_i + 1
puts result.to_s+ ' is a bigger and better favorite number.'
