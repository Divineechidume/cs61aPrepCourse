def grandfather_clock block_description, &block
	start_time = Time.new.hour + 1
	block.call
	time = Time.new.hour + 1
	duration = Time.new.hour - start_time
	if duration != 1
		block.call
	end
end
grandfather_clock Dong do 
	puts 'DONG!'
end