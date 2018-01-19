def caesar_cypher(msg, key)
  # printing the alphabet twice is a simple way to loop from Z to A.
  upcase_alphabet = ('A'..'Z').to_a
  downcase_alphabet = ('a'..'z').to_a

  msg = msg.split("")
  answer = []
  msg.each do |character|
    if upcase_alphabet.include?(character)
      index = upcase_alphabet.index(character) + key
      answer.push(magic_array_reader(upcase_alphabet, index))
    elsif downcase_alphabet.include?(character)
      index = downcase_alphabet.index(character) + key
      answer.push(magic_array_reader(downcase_alphabet, index))
    else
      answer.push(character)
    end
  end
  answer.join("")
end

def magic_array_reader(array, index)
  if index > array.length - 1
    magic_index = index - array.length
  else
    magic_index = index
  end
  array[magic_index]
end

#caesar_cypher("A", 2)
puts caesar_cypher("What a string!", 5)
#caesar_cypher("b", 2)
