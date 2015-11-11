def cipher(input, shift)
  # For wrapping if shift would loop alphabet
  if (shift < -26 || shift > 26)
    shift %= 26
  end
  # Loop every character in string
  input.scan(/./) do |x|
    current_letter = input[x]
    # CHeck if letter, skip otherwise
    if current_letter =~ /[A-Za-z]/
      letter_value = current_letter.ord
      # Check for uppercase
      case letter_value
      when 65..90
        letter_value += shift
        # Wrap the alphabet if outside the numbers
        if letter_value < 65
          letter_value += 26
        elsif letter_value > 90
          letter_value -= 26
        end
      # Check for lowercase
      when 97..122
        letter_value += shift;
        # Wrap the alphabet if outside the numbers
        if letter_value < 97
          letter_value += 26
        elsif letter_value > 122
          letter_value -= 26
        end
      end
      # Update string with shifted letter from ordinal
      input[x] = letter_value.chr
    end
  end

  puts input
end

puts "Please type your string: "
text_to_encrypt = gets.chomp
puts "Please enter how many letters over you would like to shift:"
number_to_shift = gets.chomp.to_i
print "Caesar Cipher: "
cipher(text_to_encrypt, number_to_shift)
