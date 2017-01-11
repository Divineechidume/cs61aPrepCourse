def music_shuffle filenames
	new_list  = filenames.sort_by{rand}
	puts new_list
end

songs = ['$/Dram', 'Gray_Luh/Berhana', 'I_Understand/ILoveMakonnen', 'Summer_Friends/Chance_the_Rapper', 'SOLO/jPark', 'FXXK_IT/Bigbang', 'Ferrari/Yemi_Alade']
puts(music_shuffle(songs))