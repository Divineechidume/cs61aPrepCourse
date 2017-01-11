all_mp3s = shuffle(Dir['**/*.mp3'])
filename = 'playlist'
File.open filename, 'w' do |f|
	all_mp3s.each do |mp3|
		f.write mp3+"\n"
	end
end
puts 'Done!'