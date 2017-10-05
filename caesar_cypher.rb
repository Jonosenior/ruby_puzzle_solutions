def caesar_cypher(msg, key)
  # printing the alphabet twice is a simple way to loop from Z to A.
  upcase_alphabet = ('A'..'Z').to_a + ('A'..'Z').to_a
  downcase_alphabet = ('a'..'z').to_a + ('a'..'z').to_a

  msg = msg.split("")
  answer = []
  msg.each do |character|
    if upcase_alphabet.include?(character)
      answer.push(upcase_alphabet[upcase_alphabet.index(character) + key])
    elsif downcase_alphabet.include?(character)
      answer.push(downcase_alphabet[downcase_alphabet.index(character) + key])
    else
      answer.push(character)
    end
  end
  answer.join("")
end

#caesar_cypher("A", 2)
puts caesar_cypher("What a string!", 5)
#caesar_cypher("b", 2)
