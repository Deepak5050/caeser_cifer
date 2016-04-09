def caesar_cipher(string, shift = 1)
	alphabets = Array('A'..'z')
	# creates an array of ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"] 

 	alphabets.slice!(26, 6) #removing special/unnecesary characters
 	alphabets_hash = Hash[alphabets.zip(alphabets.rotate(shift))]

	string_shifted = string.chars.map { |char| alphabets_hash.fetch(char, ' ')}
	string_shifted.join.capitalize
end

p caesar_cipher("What a string!", 5)




