# Given a string or array with "WUB" occuring between letters or words, remove "WUB" from the input to put together the title of the song.

def song_decoder(song)
	song1 = song.gsub("WUB", " ")
	song1.split.join(" ")
end
