puts "Enter a para or list of words or a dictionary"
dictionary = gets.chomp
dictionary = dictionary.downcase.split()

puts "Enter a word or words to search from your previous entry"
text_to_search = gets.chomp
text_to_search = text_to_search.downcase.split()

def substrings(dictionary, text_to_search)
	word_count = Hash.new(0)
	text_to_search.each do |search_word|
		dictionary.each do |word|
			if search_word != word
				"Couldn't find the word/s"
			else
				word_count[word] += 1
				word_count
			end
		end
	end
	
end

p substrings(dictionary, text_to_search)
