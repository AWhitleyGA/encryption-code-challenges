require 'pry'

def maskify(input)
  character_array = input.split('').reverse
  output_array = character_array.each_with_index.map do |character, index|
    if index > 3
      character = '*'
    else
      character
    end
  end
  output_array.reverse.join
end

def caesar(input, rotate_index)
  letters = ('a'..'z').to_a
  cipher = letters.rotate(rotate_index)
  character_array = input.split('')
  output_array = character_array.map do |character|
    if letters.include?(character)
      character = cipher[letters.index(character)]
    else
      character
    end
  end
  output_array.join
end

def atabash(input)
  letters = ('a'..'z').to_a
  letters_inverse = ('a'..'z').to_a.reverse
  character_array = input.split('')
  output_array = character_array.map do |character|
    if letters.include?(character)
      character = letters_inverse[letters.index(character)]
    else
      character
    end
  end
  output_array.join
end
binding.pry
