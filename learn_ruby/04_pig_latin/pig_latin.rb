def translate(text)
	small_words = %w[a e i o u sch qu]

	capitalized_words = text.split(' ').map do |word|
		small_words.include?(word) ? word : word.capitalize
	end

	capitalized_words.first.capitalize!
	return capitalized_words.join(' ')
end 