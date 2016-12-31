book = [['chapter 1', 'Getting started', '1'], ['chapter 2', 'Numbers', '9'], ['chapter 3', 'Letters', '13']]
line_width = 80
puts('Table of Contents'.center(line_width/1.5))
puts 
puts(((book[0][0]) + ':' + (book[0][1])).ljust(line_width/2) + 'Page'.rjust(line_width/2) + book[0][2].rjust(line_width/25))
puts(((book[1][0]) + ':' + (book[1][1])).ljust(line_width/2) + 'Page'.rjust(line_width/2) + book[1][2].rjust(line_width/25))
puts(((book[2][0]) + ':' + (book[2][1])).ljust(line_width/2) + 'Page'.rjust(line_width/2) + book[2][2].rjust(line_width/25))
