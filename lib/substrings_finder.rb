dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)

  # first, scan the given text with each word in the dictionary and push
  # any matches to the matched_elements array.
  matched_elements = []
  dictionary.each do |element|
    matched_elements.push(text.downcase.scan(element))
  end

# second, populate a hash with the matched substring as key and the amount
# of times it appears as the value.

  final_answer = Hash.new 0

  matched_elements.flatten.each do |word|
    final_answer[word] += 1
  end
  final_answer
end

substrings("below", dictionary)
#substrings("Howdy partner, sit down! How's it going?", dictionary)
