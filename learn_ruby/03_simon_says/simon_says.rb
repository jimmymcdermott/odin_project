def echo(text)
	return text
end

def shout(text)
	return text.upcase
end

def repeat(text, number = 2)
	repeated = ""
	number.times do |i|
		repeated << text + " "
	end
	return repeated.chomp(" ")
end

def start_of_word(text, distance = 1)
	return text[0..distance-1]
end

def first_word(text)
	values = text.split(" ")
	return values[0]
end

def titleize(text)
	small_words = %w[on the and over]

	capitalized_words = text.split(' ').map do |word|
		small_words.include?(word) ? word : word.capitalize
	end

	capitalized_words.first.capitalize!
	return capitalized_words.join(' ')
end