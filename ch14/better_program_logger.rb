$logger_depth = 0
def log string, &block
	prefix = ' '*$logger_depth
	puts prefix + "Beginning \"#{string}\"..."
	$logger_depth = $logger_depth + 3
	result = block.call
	$logger_depth = $logger_depth - 3
	puts prefix + "...\"#{string}\" finished., returning: #{result.to_s}"
end
log 'outer block' do
	log 'some little block' do
		log 'teeny-tiny block' do
			'lots of love'
		end
		42
	end
	log 'yet another block' do
		'I love Indian food'
	end
	true
end