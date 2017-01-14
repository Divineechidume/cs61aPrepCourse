class OrangeTree
	def initialize
		@orangecount = 0
		@height      = 0
		@age         = 0
	end
	def height
		height
	end
	def one_year_passes
		@height = @height + 10
		@orangecount = 0
		@age    = @age    + 1
		puts "The Orange Tree is #{@height}m tall"
		if @age > 3
			@orangecount = 4 + (@age%2)
		elsif @age == 13
			puts "The tree is now dead due to its old age. It was #{age} years old."
		end
	end
	def count_the_oranges
		puts "There are #{@orangecount} orange."
	end
	def pick_an_orange
		if @orangecount == 0
			puts "You don't have any oranges to pick this year"
		else
			@orangecount = @orangecount - 1
			puts "The orange was very delicious"
		end
	end
end
orange = OrangeTree.new
orange.one_year_passes
orange.one_year_passes
orange.one_year_passes
orange.one_year_passes
orange.count_the_oranges
orange.pick_an_orange
orange.one_year_passes